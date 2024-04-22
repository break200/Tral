//
//  HomePopularViuew.swift
//  Tral
//
//  Created by break200 on 4/18/24.
//

import SwiftUI

struct HomePopularView: View {
    
    let mo:HomePopularModel
    
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)){
            Image(mo.img)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 142, height: 180)
                    .cornerRadius(16)
            VStack(alignment: .leading){
                Text(mo.name)
    
                    .foregroundStyle(.white)
                Text(mo.distance)
    
                    .foregroundStyle(.white)
            }.padding(.horizontal , 15)
             .padding(.bottom     , 20)
        }.overlay {
            LinearGradient(colors: [.clear,.black], startPoint: .center, endPoint: .bottom)
                .cornerRadius(16)
        }
    }
}

#Preview {
    HomePopularView(mo:.samplePopular)
}
