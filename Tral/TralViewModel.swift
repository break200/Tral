//
//  TralViewModel.swift
//  Tral
//
//  Created by break200 on 4/19/24.
//

import Foundation
import SwiftUI

class TralViewModel:ObservableObject {
    


    
        //Home
        @Published var selectedTab: Tab = .home
        @Published var selectedHomeTopTab: HomeHeadTab = .forest
        @Published var toplist  = ["forest","mountains","beach","city","sea","desert" ]
        @Published var homeConfig  = ["homeProfile","mountains","beach","city","sea","desert" ]
    
    
        @Published var home_Profile = HomeProfileModel(id: "home_Profile", imageName: DefineImage.PROFILE, desc: "Let's Go Travel", greetings: "Hello, sanghee son")
    
        // property
        @Published var populars: [HomePopularModel]       = Bundle.main.decode("homepopular.json")
        @Published var homecards: [HomeCardModel]         = Bundle.main.decode("homecards.json") 
    
    
    
        //discover
        @Published var dislist  = ["Popular","Recommend"]
        @Published var selectedDisTopTab: DisHeadTab  = .popular
        
    
    
        // GallaryView
        @Published var selectedAnimal: String = "tiger"
        
        
        // GridLayout
        @Published var gridLayout: [GridItem] = [GridItem(.flexible())]
        @Published var gridColumn: Double = 4.0
        
        // init
        init() {
            gridSwitch()
        }
        
        // func
        func gridSwitch() {
            gridLayout = Array(repeating: GridItem(.flexible()), count: Int(gridColumn))
        }
    
    
}
