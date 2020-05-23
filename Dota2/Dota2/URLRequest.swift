//
//  URLRequest.swift
//  Dota2
//
//  Created by Linh Nguyen Van on 5/14/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import Foundation
class URLRequest {
    static func request(urlString: String, completionHandle: @escaping ([ChampionModel]) ->()) {
        guard let url = URL.init(string: urlString) else {return}
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if (error == nil) {
                if let response = response as? HTTPURLResponse {
                    if response.statusCode == 200 {
                    let result = try! JSONDecoder().decode([ChampionModel].self, from: data!)
                        
                        DispatchQueue.main.async {
                            completionHandle(result)
                        }
                        
                        
                    }
                }
            }
            
        }.resume()
    }
}
