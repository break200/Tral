//
//  HomeTopTab.swift
//  Tral
//
//  Created by break200 on 4/18/24.
//

import SwiftUI


enum TopTab:String,CaseIterable {
    case forest
    case mountains
    case beach
    case city
    case sea
    case desert
}


struct HomeTopTab: View {
    
    @Binding var selectedTab:TopTab
    
    var body: some View {
        ScrollView(.horizontal , showsIndicators: false){
            LazyHStack (spacing: 20) {
                ForEach(TopTab.allCases , id: \.self){ item in
                    
                    if item == .forest{
                        Button{
                            selectedTab = .forest
                        }label: {
                            if selectedTab == .forest{
                                Text("forest")
                                    .frame(width: 134, height: 30)
                                    .background(Color.black)
                                    .cornerRadius(8)
                                    .foregroundStyle(.white)
                                    .padding(.leading , 10)
                            }else{
                                Text("forest")
                                    .frame(width: 134, height: 30)
//                                    .background(Color(hex: "031F2A"))
                                    .cornerRadius(30)
//                                    .foregroundStyle(Color(red: 235, green: 238, blue: 238))
                                    .foregroundStyle(Color.black)
                            }
                        }
                    }else if item == .mountains{
                        Button{
                            selectedTab = .mountains
                        }label: {
                            if selectedTab == .mountains{
                                Text("mountains")
                                    .frame(width: 134, height: 30)
                                    .background(Color.black)
                                    .cornerRadius(8)
                                    .foregroundStyle(.white)
                                    .padding(.leading , 10)
                            }else{
                                Text("mountains")
                                    .frame(width: 134, height: 30)
//                                    .background(Color(hex: "031F2A"))
                                    .cornerRadius(30)
                                    .foregroundStyle(Color.black)
                            }
                        }
                    }else if item == .beach{
                        Button{
                            selectedTab = .beach
                        }label: {
                            if selectedTab == .beach{
                                Text("beach")
                                    .frame(width: 134, height: 30)
                                    .background(Color.black)
                                    .cornerRadius(8)
                                    .foregroundStyle(.white)
                                    .padding(.leading , 10)
                            }else{
                                Text("beach")
                                    .frame(width: 134, height: 30)
//                                    .background(Color(hex: "031F2A"))
                                    .cornerRadius(30)
                                    .foregroundStyle(Color.black)
                            }
                        }
                    }else if item == .city{
                        Button{
                            selectedTab = .city
                        }label: {
                            if selectedTab == .city{
                                Text("city")
                                    .frame(width: 134, height: 30)
                                    .background(Color.black)
                                    .cornerRadius(8)
                                    .foregroundStyle(.white)
                                    .padding(.leading , 10)
                            }else{
                                Text("city")
                                    .frame(width: 134, height: 30)
//                                    .background(Color(hex: "031F2A"))
                                    .cornerRadius(30)
                                    .foregroundStyle(Color.black)
                            }
                        }
                    }else if item == .sea{
                        Button{
                            selectedTab = .sea
                        }label: {
                            if selectedTab == .sea{
                                Text("sea")
                                    .frame(width: 134, height: 30)
                                    .background(Color.black)
                                    .cornerRadius(8)
                                    .foregroundStyle(.white)
                                    .padding(.leading , 10)
                            }else{
                                Text("sea")
                                    .frame(width: 134, height: 30)
//                                    .background(Color(hex: "031F2A"))
                                    .cornerRadius(30)
                                    .foregroundStyle(Color.black)
                            }
                        }
                    }else if item == .desert{
                        Button{
                            selectedTab = .desert
                        }label: {
                            if selectedTab == .desert{
                                Text("desert")
                                    .frame(width: 134, height: 30)
                                    .background(Color.black)
                                    .cornerRadius(8)
                                    .foregroundStyle(.white)
                                    .padding(.leading , 10)
                            }else{
                                Text("desert")
                                    .frame(width: 134, height: 30)
//                                    .background(Color(hex: "031F2A"))
                                    .cornerRadius(30)
                                    .foregroundStyle(Color.black)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeTopTab(selectedTab: .constant(.forest))
}
