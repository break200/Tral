//
//  HomeView.swift
//  Tral
//
//  Created by break200 on 4/17/24.
//

import SwiftUI

struct HomeView: View {
    let listDatas = [1,2,3,4,5]
    
    @State private var selectedTopTab: TopTab = .forest
    
    var body: some View {
        ScrollView(.vertical){
            LazyVStack (spacing: 20) {
                ForEach( listDatas , id: \.self){ index in
                    switch index {
                    case 1:
                        HomeTopName()
                    case 2:
                        HomeTopTab(selectedTab: $selectedTopTab)
                    case 3:
                        Text("First item")
                    case 4:
                        Text("First item")
                    case 5:
                        Text("First item")
                    default:
                        Text("")
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
