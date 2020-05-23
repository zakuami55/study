//
//  URLRequest.swift
//  Dota2Detail
//
//  Created by Linh Nguyen Van on 5/15/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import Foundation
class URLRequest {
    static func requestAPI (urlString: String, completionHandle: @escaping ([HeroModel])->()) {
        guard let url = URL.init(string: urlString) else {return}
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if (error == nil) {
                if let response = response as? HTTPURLResponse {
                    if response.statusCode == 200 {
                        let result = try! JSONDecoder().decode([HeroModel].self, from: data!)
                        
                        DispatchQueue.main.async {
                            completionHandle(result)
                        }
                    }
                }
            }
            
        }.resume()
    }
}
