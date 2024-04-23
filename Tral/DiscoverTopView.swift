//
//  DiscoverTopView.swift
//  Tral
//
//  Created by break200 on 4/22/24.
//

import SwiftUI


enum DisHeadTab:String,CaseIterable {
    case popular
    case recommend
    
}

struct DiscoverTopView: View {
    
    @ObservedObject var vm:TralViewModel
    
    var body: some View {
        ScrollView(.horizontal , showsIndicators: false){
            LazyHStack (spacing: 20) {
                ForEach(DisHeadTab.allCases , id: \.self){ item in
                    Button{
                        vm.selectedDisTopTab = item
                    }label: {
                        if vm.selectedDisTopTab == item{
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
    DiscoverTopView(vm: TralViewModel())
}
