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
                                    .frame(width: 75, height: 30)
                                    .background(Color.black)
                                    .cornerRadius(8)
                                    .foregroundStyle(.white)
                                    .padding(.leading , 10)
                                    .padding(.trailing , -10)
                            }else{
                                Text("forest")
                                    .frame(width: 75, height: 30)
                                    .background(Color.init(red: 235, green: 238, blue: 238, opacity: 0.95))
                                    .cornerRadius(30)
                                    .foregroundStyle(Color.init(red: 159, green: 179, blue: 173, opacity: 0.95))
                            }
                        }
                    }else if item == .mountains{
                        Button{
                            selectedTab = .mountains
                        }label: {
                            if selectedTab == .mountains{
                                Text("mountains")
                                    .frame(width: 105, height: 30)
                                    .background(Color.black)
                                    .cornerRadius(8)
                                    .foregroundStyle(.white)
                                    .padding(.leading , 10)
                                    .padding(.trailing , -10)
                            }else{
                                Text("mountains")
                                    .frame(width: 105, height: 30)
                                    .background(Color.init(red: 235, green: 238, blue: 238, opacity: 0.95))
                                    .cornerRadius(8)
                                    .foregroundStyle(Color.init(red: 159, green: 179, blue: 173, opacity: 0.95))
                            }
                        }
                    }else if item == .beach{
                        Button{
                            selectedTab = .beach
                        }label: {
                            if selectedTab == .beach{
                                Text("beach")
                                    .frame(width: 76, height: 30)
                                    .background(Color.black)
                                    .cornerRadius(8)
                                    .foregroundStyle(.white)
                                    .padding(.leading , 10)
                            }else{
                                Text("beach")
                                    .frame(width: 76, height: 30)
                                    .background(Color.init(red: 235, green: 238, blue: 238, opacity: 0.95))
                                    .cornerRadius(8)
                                    .foregroundStyle(Color.init(red: 159, green: 179, blue: 173, opacity: 0.95))
                                    .padding(.trailing , -10)
                            }
                        }
                    }else if item == .city{
                        Button{
                            selectedTab = .city
                        }label: {
                            if selectedTab == .city{
                                Text("city")
                                    .frame(width: 59, height: 30)
                                    .background(Color.black)
                                    .cornerRadius(8)
                                    .foregroundStyle(.white)
                                    .padding(.leading , 10)
                            }else{
                                Text("city")
                                    .frame(width: 59, height: 30)
                                    .background(Color.init(red: 235, green: 238, blue: 238, opacity: 0.95))
                                    .cornerRadius(8)
                                    .foregroundStyle(Color.init(red: 159, green: 179, blue: 173, opacity: 0.95))
                            }
                        }
                    }else if item == .sea{
                        Button{
                            selectedTab = .sea
                        }label: {
                            if selectedTab == .sea{
                                Text("sea")
                                    .frame(width: 59, height: 30)
                                    .background(Color.black)
                                    .cornerRadius(8)
                                    .foregroundStyle(.white)
                                    .padding(.leading , 10)
                            }else{
                                Text("sea")
                                    .frame(width: 59, height: 30)
                                    .background(Color.init(red: 235, green: 238, blue: 238, opacity: 0.95))
                                    .cornerRadius(8)
                                    .foregroundStyle(Color.init(red: 159, green: 179, blue: 173, opacity: 0.95))
                            }
                        }
                    }else if item == .desert{
                        Button{
                            selectedTab = .desert
                        }label: {
                            if selectedTab == .desert{
                                Text("desert")
                                    .frame(width: 75, height: 30)
                                    .background(Color.black)
                                    .cornerRadius(8)
                                    .foregroundStyle(.white)
                                    .padding(.leading , 10)
                            }else{
                                Text("desert")
                                    .frame(width: 75, height: 30)
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
}

#Preview {
    HomeTopTab(selectedTab: .constant(.forest))
}
