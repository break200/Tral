//
//  ViewEx.swift
//  Tral
//
//  Created by break200 on 4/17/24.
//

import Foundation
import SwiftUI
// MARK: - Frame Modifier

extension View {
    func frameWH(width:CGFloat? ,height:CGFloat? ) -> some View {
        self.frame(width: width , height: height)
    }
    
    // Vertical Center
    func vCenter() -> some View {
        self.frame(maxHeight: .infinity, alignment: .center)
    }
    
    // Vertical Top
    func vTop() -> some View {
        self.frame(maxHeight: .infinity, alignment: .top)
    }
    
    // Vertical Bottom
    func vBottom() -> some View {
        self.frame(maxHeight: .infinity, alignment: .bottom)
    }
    
    // Horizontal Center
    func hCenter() -> some View {
        self.frame(maxWidth: .infinity, alignment: .center)
    }
    
    // Horizontal Leading
    func hLeading() -> some View {
        self.frame(maxWidth: .infinity, alignment: .leading)
    }
    
    // Horizontal Trailing
    func hTrailing() -> some View {
        self.frame(maxWidth: .infinity, alignment: .trailing)
    }
}

// 패딩
extension View {
    func padingLeBo(cm:CGFloat) -> some View {
        self.padding([.leading,.bottom], cm)
    }
    
    func padingLRBo(cm:CGFloat) -> some View {
        self.padding([.trailing,.bottom], cm)
    }
    
    func padingLeTo(cm:CGFloat) -> some View {
        self.padding([.leading,.top], cm)
    }
    
    func padingLRTo(cm:CGFloat) -> some View {
        self.padding([.trailing,.top], cm)
    }
    
    func paddingHorizontal(cm:CGFloat) -> some View {
        self.padding(.horizontal , cm)
    }
    
    func paddingVertical(cm:CGFloat) -> some View {
        self.padding(.vertical , cm)
    }
    
    
    func paddingLeading(cm:CGFloat) -> some View {
        self.padding(.leading , cm)
    }
    
    func paddingTrailing(cm:CGFloat) -> some View {
        self.padding(.trailing , cm)
    }
    
    
    func paddingTop(cm:CGFloat) -> some View {
        self.padding(.top , cm)
    }
    
    func paddingBottom(cm:CGFloat) -> some View {
        self.padding(.bottom , cm)
    }
}
