//
//  ColorEx.swift
//  Tral
//
//  Created by break200 on 4/18/24.
//

import Foundation
import SwiftUI

//헥사 코드
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

extension Color {
    /// RGB 값을 사용하여 색상을 초기화합니다. 각 값은 0과 255 사이의 정수입니다.
    init(red: Int, green: Int, blue: Int, opacity: Double = 1.0) {
        self.init(.sRGB,
                  red: Double(red) / 255.0,
                  green: Double(green) / 255.0,
                  blue: Double(blue) / 255.0,
                  opacity: opacity)
    }
}

