//
//  HomePopular.swift
//  Tral
//
//  Created by break200 on 4/22/24.
//

import Foundation

struct HomePopularModel:Codable, Identifiable  {
    let id:String
    let name:String
    let distance:String
    let img:String
    
    static let samplePopular = HomePopularModel(id: "1", name: "Al-Faisakuag", distance: "1.1 km", img: "popular-0")
    
    
    init(id: String, name: String, distance: String, img: String) {
        self.id = id
        self.name = name
        self.distance = distance
        self.img = img
    }
}
