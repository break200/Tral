//
//  HomeBottomView.swift
//  Tral
//
//  Created by break200 on 4/18/24.
//

import SwiftUI

struct HomeCard: View {
    
    let mo:HomeCardModel
    
    var body: some View {
        
        ZStack{
            Image(mo.img)
                .resizable()
                .frame(height: 200)
                .cornerRadius(16)
            
            HStack{
                VStack(alignment: .leading , spacing:5) {
                    Text(mo.name)
                        .hLeading()
                        .foregroundStyle(.white)
                    Text("\(mo.distance) away")
                        .hLeading()
                        .foregroundStyle(.white)
                }.paddingLeading(pi: 15)
                Spacer()
                Text(mo.totalscore)
                    .font(.system(size: 20))
                    .paddingTrailingTo(pi: 15)
                    .foregroundStyle(.white)
            }.vBottom()
             .paddingBottom(pi: 20)
        }.frame(width: .infinity)
        
    }
}

#Preview {
    HomeCard(mo: .sampleCard)
}
