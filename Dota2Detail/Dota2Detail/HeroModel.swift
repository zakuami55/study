//
//  HeroModel.swift
//  Dota2Detail
//
//  Created by Linh Nguyen Van on 5/15/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import Foundation
struct HeroModel: Codable {
    var icon: String
    var localized_name: String
    var id: Int
    var primary_attr: String
    var attack_type: String
    var img: String
    
    enum CodingKeys: String, CodingKey {
        case icon
        case localized_name
        case id
        case primary_attr
        case attack_type
        case img
    }
    
}
