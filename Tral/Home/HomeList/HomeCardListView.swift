//
//  HomeCardListView.swift
//  Tral
//
//  Created by break200 on 4/19/24.
//

import SwiftUI

struct HomeCardListView: View {
    @ObservedObject var vm:TralViewModel
    
    var body: some View {
        VStack{
            Text("Featured")
                .font(.system(size: 20))
                .hLeading()
            LazyVStack (spacing: 20) {
                ForEach(vm.homecards) { item in
                    HomeCard(mo: item)
                }
            }
        }
    }
}

#Preview {
    HomeCardListView(vm: TralViewModel())
}
