//
//  MainView.swift
//  Tral
//
//  Created by break200 on 4/17/24.
//

import SwiftUI

struct MainView: View {
    
    //vm
    @StateObject var vm:TralViewModel = TralViewModel()
    
    init() {
        //tabview 배경색 지정
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    var body: some View {
        ZStack {
            VStack {
                TabView(selection: $vm.selectedTab) {
                    switch vm.selectedTab {
                    case .home:
                        HomeView(vm: vm)
                            .tag(0)
                    case .discover:
                        DiscoverView(vm:vm)
                            .tag(1)
                    case .location:
                        LocationView()
                            .tag(2)
                    case .calendar:
                        CalendarView()
                            .tag(3)
                    }
                }.background(Color.clear)
                Spacer(minLength: 0)
                CustomTabbar(selectedTab: $vm.selectedTab)
                    .frame(width: .screenWidth , height: 0)
            }
        }
    }
}

#Preview {
    MainView()
}
