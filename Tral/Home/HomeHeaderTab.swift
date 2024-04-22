//
//  HomeTopTab.swift
//  Tral
//
//  Created by break200 on 4/18/24.
//

import SwiftUI


enum HomeHeadTab:String,CaseIterable {
    case forest
    case mountains
    case beach
    case city
    case sea
    case desert
}


struct HomeHeaderTab: View {
    
    @ObservedObject var vm:TralViewModel
    
    var body: some View {
        ScrollView(.horizontal , showsIndicators: false){
            LazyHStack (spacing: 20) {
                ForEach(HomeHeadTab.allCases , id: \.self){ item in
                    Button{
                        vm.selectedTopTab = item
                    }label: {
                        if vm.selectedTopTab == item{
                            Text(item.rawValue)
                                .paddingHVOther(hpi: 15, vpi: 5)
                                .background(Color.black)
                                .cornerRadius(8)
                                .foregroundStyle(.white)
                        }else{
                            Text(item.rawValue)
                                .paddingHVOther(hpi: 15, vpi: 5)
                                .background(Color.init(red: 235, green: 238, blue: 238, opacity: 0.95))
                                .cornerRadius(8)
                                .foregroundStyle(Color.init(red: 159, green: 179, blue: 173, opacity: 0.95))
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeHeaderTab(vm: TralViewModel())
}
