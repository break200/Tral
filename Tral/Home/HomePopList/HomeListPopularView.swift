//
//  HomeListPopularView.swift
//  Tral
//
//  Created by break200 on 4/19/24.
//

import SwiftUI

struct HomeListPopularView: View {
    
    @ObservedObject var vm:TralViewModel
    
    var body: some View {
        VStack(spacing: 15){
            Text("Popular Experiences")
                .font(.system(size: 16))
                .fontWeight(.medium)
                .hLeading()
            ScrollView(.horizontal , showsIndicators: false){
                LazyHStack (spacing: 20) {
                    ForEach(vm.populars){ item in
                        HomePopularView(mo: item)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeListPopularView(vm: TralViewModel())
}
