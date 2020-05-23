//
//  File.swift
//  Dota2
//
//  Created by Linh Nguyen Van on 5/14/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import Foundation

struct ChampionModel: Codable {
    var icon: String
    var localized_name: String
    var img: String
    	
    enum CodingKeys: String, CodingKey {
        case icon
        case localized_name
        case img
    }
    }
    
