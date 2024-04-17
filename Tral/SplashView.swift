//
//  SplashView.swift
//  Tral
//
//  Created by break200 on 4/17/24.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isMainGo = false
    
    var body: some View {
        if isMainGo {
            MainView()
        }else{
            ZStack {
                Image("logo")
                    .resizable()
                VStack(spacing: 20){
                    Spacer()
                    Text("Explore and\ndiscover new vistas")
                        .font(.system(size: 32))
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity)
                        .padding(.leading , -55)
                    Text("Browse through a large number of interesting travel albums and choose some locations for yourself. The world is waiting for you to explore")
                        .font(.system(size: 16))
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity)
                        .padding(.leading  , 32)
                        .padding(.trailing , 32)
                    
                    Spacer()
                    
                    Button  {
                        isMainGo = true
                    } label: {
                        Text("Get Started")
                            .font(.system(size: 18))
                            .foregroundColor(.black)
                            .background(Color.white)
                            .frame(width: .screenWidth , height: 56)
                            .padding(.leading  , -32)
                            .padding(.trailing , -32)
                    } .background(Color.white)
                        .cornerRadius(16)
                        .offset(y: -60)
                }
            } //:ZSTACK
        }
    }
}

#Preview {
    SplashView()
}
