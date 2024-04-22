//
//  HomeTopName.swift
//  Tral
//
//  Created by break200 on 4/18/24.
//

import SwiftUI

struct HomeHeader: View {
    
    @ObservedObject var vm:TralViewModel
    
    var body: some View {
        HStack{
            VStack(alignment: .leading , spacing: 10) {
                Text(vm.home_Profile.greetings)
                    .font(.system(size: 14))
                Text(vm.home_Profile.desc)
                    .font(.system(size: 24))
                    .fontWeight(.bold)
            }
//            .paddingLeading(pi: 20)
            Spacer()
            Image(vm.home_Profile.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 54, height: 54)
                .cornerRadius(54)
//                .padding(.trailing, 20)
                
        }
    }
}

#Preview {
    HomeHeader(vm: TralViewModel())
}
