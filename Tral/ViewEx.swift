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
    
    func padding(px:CGFloat) -> some View {
        self.padding(px)
    }
    
    func paddingLeadingBo(pi:CGFloat) -> some View {
        self.padding([.leading,.bottom], pi)
    }
    
    func paddingTrailingBo(pi:CGFloat) -> some View {
        self.padding([.trailing,.bottom], pi)
    }
    
    func paddingLeadingTo(pi:CGFloat) -> some View {
        self.padding([.leading,.top], pi)
    }
    
    func paddingTrailingTo(pi:CGFloat) -> some View {
        self.padding([.trailing,.top], pi)
    }
    
    func paddingHorizontal(pi:CGFloat) -> some View {
        self.padding(.horizontal , pi)
    }
    
    func paddingVertical(pi:CGFloat) -> some View {
        self.padding(.vertical , pi)
    }
    
    
    func paddingLeading(pi:CGFloat) -> some View {
        self.padding(.leading , pi)
    }
    
    func paddingTrailing(pi:CGFloat) -> some View {
        self.padding(.trailing , pi)
    }
    
    
    func paddingTop(pi:CGFloat) -> some View {
        self.padding(.top , pi)
    }
    
    func paddingBottom(pi:CGFloat) -> some View {
        self.padding(.bottom , pi)
    }
    
    
    func paddingHVOther(hpi:CGFloat , vpi:CGFloat) -> some View {
        self .padding(.horizontal,hpi).padding(.vertical,vpi)
    }
}

// Text aliment
extension View {
    func textLeading() -> some View {
        self.multilineTextAlignment(.leading)
    }
    
    func textCenter() -> some View {
        self.multilineTextAlignment(.center)
    }
    
    func textTrailing() -> some View {
        self.multilineTextAlignment(.trailing)
    }
    
    func textLeadingLine(number: Int?) -> some View {
         self.lineLimit(number).multilineTextAlignment(.leading)
    }
    
    func textCenterLine(number: Int?) -> some View {
         self.lineLimit(number).multilineTextAlignment(.center)
    }

    func textTrailingLine(number: Int?) -> some View {
         self.lineLimit(number).multilineTextAlignment(.trailing)
    }
}
