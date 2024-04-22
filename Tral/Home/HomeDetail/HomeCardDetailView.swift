//
//  HomeDetailView.swift
//  Tral
//
//  Created by break200 on 4/22/24.
//

import SwiftUI

struct HomeCardDetailView: View {
    
    let mo:HomeCardModel
    
    var body: some View {
        ScrollView(.vertical , showsIndicators: false) {
            Image(mo.img)
                .resizable()
                .frame(width: CGFloat.screenWidth , height: CGFloat.screenHeight * 0.4)
            VStack(alignment: .center){
                Spacer(minLength: 20)
                Text(mo.name)
                    .font(.system(size: 30, weight: .bold))
                    .underline(true, color: Color.red)
                Spacer(minLength: 20)
                Text(mo.distance)
                    .font(.system(size: 16))
                Text(mo.desc)
            }
        }
    }
}

#Preview {
    HomeCardDetailView(mo: .sampleCard)
}
