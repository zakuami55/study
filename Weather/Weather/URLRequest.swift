//
//  URLRequest.swift
//  Weather
//
//  Created by Linh Nguyen Van on 5/18/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import Foundation
class URLRequest {
    static func request (urlString: String, completionHanle:@escaping (WeatherModel)->() ) {
        guard let url = URL.init(string: urlString) else {return}
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if (error == nil) {
                if let response = response as? HTTPURLResponse {
                    if response.statusCode == 200 {
                        do {
                            
                            let decoder = JSONDecoder()
                            decoder.dateDecodingStrategy = .iso8601
                        let result = try decoder.decode(WeatherModel.self, from: data!)
                        DispatchQueue.main.async {
                            completionHanle(result) }
                        } catch(let e) {
                            print(e.localizedDescription)
                           print("Error")
                                
                        
                        }
                    }
                }
            }
        }.resume()
    }
}
