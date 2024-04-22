//
//  HomeCardModel.swift
//  Tral
//
//  Created by break200 on 4/22/24.
//

import Foundation

struct HomeCardModel:Codable, Identifiable  {
    let id:String
    let name:String
    let distance:String
    let img:String
    let totalscore:String
    
    static let sampleCard = HomeCardModel(id: "1", name: "Al-Faisakuag", distance: "1.1 km", img: "popular-0", totalscore: "4.6")
    
    
    init(id: String, name: String, distance: String, img: String , totalscore:String) {
        self.id = id
        self.name = name
        self.distance = distance
        self.img = img
        self.totalscore = totalscore
    }
}

