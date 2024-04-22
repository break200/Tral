//
//  HomeView.swift
//  Tral
//
//  Created by break200 on 4/17/24.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var vm: TralViewModel
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                LazyVStack {
                    HomeHeader(vm: vm)
                    HomeHeaderTab(vm: vm)
                    HomeListPopularView(vm: vm)
                    HomeCardListView(vm: vm)
                }
            }.paddingHorizontal(pi: 20)
        }
    }
}

#Preview {
    HomeView(vm: TralViewModel())
}
