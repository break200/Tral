//
//  CustomTabbar.swift
//  Tral
//
//  Created by break200 on 4/17/24.
//

import SwiftUI


enum Tab:String,CaseIterable {
    case home
    case discover
    case location
    case calendar
}



struct CustomTabbar: View {
    
    @Binding var selectedTab:Tab

    
    var body: some View {
        HStack{
            ForEach(Tab.allCases , id:\.self) { item in
                Spacer()
                if item == .home{
                    Image(selectedTab == item ? DefineImage.HOME_ON : DefineImage.HOME_OFF)
                        .scaleEffect(selectedTab == item ? 1.25 : 1.0)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = item
                            }
                        }
                    Spacer()
                }else if item == .discover {
                    Image(selectedTab == item ? DefineImage.DIS_ON : DefineImage.DIS_OFF)
                        .scaleEffect(selectedTab == item ? 1.25 : 1.0)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = item
                            }
                        }
                    Spacer()
                }else if item == .location {
                    Image(selectedTab == item ? DefineImage.LOC_ON : DefineImage.LOC_OFF)
                        .scaleEffect(selectedTab == item ? 1.25 : 1.0)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = item
                            }
                        }
                    Spacer()
                }else if item == .calendar {
                    Image(selectedTab == item ? DefineImage.CAL_ON : DefineImage.CAL_OFF)
                        .scaleEffect(selectedTab == item ? 1.25 : 1.0)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = item
                            }
                        }
                    Spacer()
                }
            }
        } //:HSTACK
        .frame(width: nil, height: 60)
        .background(.white)
        .cornerRadius(10)
        .offset(y: -20)
//        .padding()
    }
}

#Preview {
    CustomTabbar(selectedTab: .constant(.home))
}
