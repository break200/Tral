//
//  HomeBottomView.swift
//  Tral
//
//  Created by break200 on 4/18/24.
//

import SwiftUI

struct HomeBottomView: View {
   
    var body: some View {
            ScrollView(.vertical) {
                Text("Featured")
                    .font(.system(size: 20))
                    .hLeading()
                    .padding(.leading , 20)
                LazyVStack (spacing: 20) {
                    ForEach(1...30, id: \.self) { _ in
                        ZStack{
                            Image(DefineImage.FEATURED0)
                                .resizable()
                                .frame(height: 200)
                                .cornerRadius(16)
                            
                            HStack{
                                VStack{
                                    Text("Arabian Desert")
                                        .hLeading()
                                        .padding(.leading ,15)
                                        .foregroundStyle(.white)
                                    Text("35 km away")
                                        .hLeading()
                                        .padding(.leading ,15)
                                        .foregroundStyle(.white)
                                }
                                Spacer()
                                Text("4.7")
                                    .font(.system(size: 20))
                                    .padding(.trailing , 20)
                                    .foregroundStyle(.white)
                            }.vBottom()
                                .padding(.bottom , 20)
                        }
                        
                    }
                }
                .padding(.horizontal)
            }
        }
}

#Preview {
    HomeBottomView()
}
