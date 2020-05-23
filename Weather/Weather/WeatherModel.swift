//
//  WeatherModel.swift
//  Weather
//
//  Created by Linh Nguyen Van on 5/18/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import Foundation
struct WeatherModel: Codable {
    var location: Location
    var current: Current
//    var forecast: Forecast
    
    enum Codingkeys: String, CodingKey {
        case location
        case current
//        case forecast
    }
}
struct Location: Codable {
    var name: String
    enum Codingkeys: String, CodingKey {
        case name
    }
}
struct Current: Codable {
    var temperature: Int
    var weather_descriptions = [""]
    var weather_icons = [""]
    var	wind_speed: Int
    var pressure: Int
    var feelslike: Int
    var uv_index: Int
    var humidity: Int
    var wind_dir: String
    enum Codingkeys: String, CodingKey {
        case temperature
        case weather_descriptions
        case weather_icons
        case wind_speed
        case pressure
        case feelslike
        case uv_index
        case humidity
        case wind_dir
    }
}
struct Forecast: Codable {
    var date: Weather
    
enum Codingkeys: String, CodingKey {
    case date = "2020-05-20"
    }
}


struct Weather: Codable {
    
    var mintemp: Int
    var maxtemp: Int

enum Codingkeys: String, CodingKey {

    case mintemp
    case maxtemp

    }
}
