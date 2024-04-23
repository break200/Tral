//
//  DiscoverHeadView.swift
//  Tral
//
//  Created by break200 on 4/22/24.
//

import SwiftUI

struct DiscoverHeadView: View {
    
    @ObservedObject var vm:TralViewModel
    
    var body: some View {
        HStack{
            Text("Discover")
                .font(.system(size: 32 ,weight: .bold))
            Spacer()
            Button{
                //서치 리스트
            }label: {
                Image(systemName: "magnifyingglass")
                    .frame(width: 23, height: 23)
            }
        }.frame(height: 45)
            
    }
}

#Preview {
    DiscoverHeadView(vm: TralViewModel())
}
