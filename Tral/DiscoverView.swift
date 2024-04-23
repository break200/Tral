//
//  DiscoverView.swift
//  Tral
//
//  Created by break200 on 4/17/24.
//

import SwiftUI
import ACarousel
struct DiscoverView: View {

    @ObservedObject var vm: TralViewModel
    
    
    var body: some View {
        VStack{
           DiscoverHeadView(vm: vm)
           DiscoverTopView(vm: vm).frame( height: 40)
           Spacer()
            ACarousel(vm.homecards) { item in
                Image(item.img)
                    .resizable()
                    .scaledToFill()
                    .frame(height: .screenHeight * 0.4)
                    .cornerRadius(30)
            }
        }.paddingHorizontal(pi: 20)
    }
}

#Preview {
    DiscoverView(vm: TralViewModel())
}
