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
            List{
                HomeHeader(vm: vm)
                    .frame(width: .screenWidth, height: 80)
                    .listRowSeparator(.hidden)
                HomeHeaderTab(vm: vm)
                    .listRowSeparator(.hidden)
                HomeListPopularView(vm: vm)
                    .listRowSeparator(.hidden)
                HomeCardListView(vm: vm)
                    .listRowSeparator(.hidden)
                    //구분선 색 없애기
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    HomeView(vm: TralViewModel())
}
