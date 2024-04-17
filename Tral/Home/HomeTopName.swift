//
//  HomeTopName.swift
//  Tral
//
//  Created by break200 on 4/18/24.
//

import SwiftUI

struct HomeTopName: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading , spacing: 10) {
                Text("Hello, sanghee son")
                    .font(.system(size: 14))
                Text("Let's Travel")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
            }
            .padding(.leading , 20)
            Spacer()
            Image(DefineImage.PROFILE)
                .resizable()
                .scaledToFit()
                .frame(width: 54, height: 54)
                .cornerRadius(54)
                .padding(.trailing, 20)
                
        }
    }
}

#Preview {
    HomeTopName()
}
