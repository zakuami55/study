//
//  ViewController.swift
//  Dota2
//
//  Created by Linh Nguyen Van on 5/14/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    var data: [ChampionModel] = []
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.chamNameLabel.text = data[indexPath.row].localized_name
        let imageCham = try! Data(contentsOf: URL.init(string:"https://api.opendota.com" + data[indexPath.row].img)!, options: Data.ReadingOptions.alwaysMapped)
        cell.chamImage?.image = UIImage(data: imageCham)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
     
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        URLRequest.request(urlString: "https://api.opendota.com/api/heroStats", completionHandle: { [weak self] result in
            guard let self = self else {return}
            self.data.append(contentsOf: result)
            self.tableView.reloadData()

            
        })
        // Do any additional setup after loading the view.
    }


}

