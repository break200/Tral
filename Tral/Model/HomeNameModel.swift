//
//  HomeNameModel.swift
//  Tral
//
//  Created by break200 on 4/22/24.
//

import Foundation
import SwiftUI

struct HomeProfileModel:Codable , Identifiable {
    let id:String
    let imageName:String
    let desc:String
    let greetings:String
}
