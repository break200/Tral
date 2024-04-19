//
//  MainView.swift
//  Tral
//
//  Created by break200 on 4/17/24.
//

import SwiftUI

struct MainView: View {
    
    @State private var selectedTab: Tab = .home
    
    init() {
        //tabview 배경색 지정
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    var body: some View {
        ZStack {
            VStack {
                TabView(selection: $selectedTab) {
                    switch selectedTab {
                    case .home:
                        HomeView()
                            .tag(0)
                    case .discover:
                        DiscoverView()
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
                CustomTabbar(selectedTab: $selectedTab)
                    .frame(width: .screenWidth , height: 0)
            }
        }
    }
}

#Preview {
    MainView()
}
