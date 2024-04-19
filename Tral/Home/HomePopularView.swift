//
//  HomePopularViuew.swift
//  Tral
//
//  Created by break200 on 4/18/24.
//

import SwiftUI

struct HomePopularView: View {
    var body: some View {
        
        
        
        VStack(spacing: 15){
            Text("Popular Experiences")
                .font(.system(size: 16))
                .fontWeight(.medium)
                .hLeading()
            ScrollView(.horizontal , showsIndicators: false){
                LazyHStack (spacing: 20) {
                    ForEach(1...3 , id: \.self){ item in
                        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)){
                            if item == 1{
                                Image(DefineImage.POPULAR0)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 142, height: 180)
                                    .cornerRadius(16)
                                
                            }else if item == 2{
                                Image(DefineImage.POPULAR1)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 142, height: 180)
                                    .cornerRadius(16)
                            }else if item == 3{
                                Image(DefineImage.POPULAR2)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 142, height: 180)
                                    .cornerRadius(16)
                            }
                            VStack(alignment: .leading){
                                Text("Al-Faisaliah")
                                    .foregroundStyle(.white)
                                Text("1.1km boat")
                                    .foregroundStyle(.white)
                            }.padding(.horizontal , 15)
                             .padding(.bottom     , 20)
                        }.overlay {
                            LinearGradient(colors: [.clear,.black], startPoint: .center, endPoint: .bottom)
                                .cornerRadius(16)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomePopularView()
}
