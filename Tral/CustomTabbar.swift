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
    
//    private var fillImage:String {
//        selectedTab.rawValue + "_on"
//    }
//    
//    private var nofillImage:String {
//        selectedTab.rawValue + "_off"
//    }
//    private var tabColor:Color {
//        switch selectedTab {
//        case .home:
//            return .blue
//        case .discover:
//            return .green
//        case .location:
//            return .purple
//        case .calendar:
//            return .red
//        }
//    }
    
    var body: some View {
        HStack{
            ForEach(Tab.allCases , id:\.self) { item in
                Spacer()
                if item == .home{
                    Image(selectedTab == item ? "home_on" : "home_off")
                        .scaleEffect(selectedTab == item ? 1.25 : 1.0)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = item
                            }
                        }
                    Spacer()
                }else if item == .discover {
                    Image(selectedTab == item ? "home_on" : "home_off")
                        .scaleEffect(selectedTab == item ? 1.25 : 1.0)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = item
                            }
                        }
                    Spacer()
                }else if item == .location {
                    Image(selectedTab == item ? "home_on" : "home_off")
                        .scaleEffect(selectedTab == item ? 1.25 : 1.0)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = item
                            }
                        }
                    Spacer()
                }else if item == .calendar {
                    Image(selectedTab == item ? "home_on" : "home_off")
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
        .padding()
    }
}

#Preview {
    CustomTabbar(selectedTab: .constant(.home))
}
