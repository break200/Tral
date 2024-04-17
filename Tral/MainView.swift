//
//  MainView.swift
//  Tral
//
//  Created by break200 on 4/17/24.
//

import SwiftUI

struct MainView: View {
    
    @State private var selectedTab: Tab = .home
    
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
                }
                Spacer(minLength: 0)
                CustomTabbar(selectedTab: $selectedTab)
                    .frame(width: .screenWidth , height: 70)
            }
        }
    }
}

#Preview {
    MainView()
}
