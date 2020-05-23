//
//  ViewController.swift
//  Dota2Detail
//
//  Created by Linh Nguyen Van on 5/15/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var data: [HeroModel] = []
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.nameHerolbl.text = data[indexPath.row].localized_name
        let image = try! Data(contentsOf: URL.init(string: "https://api.opendota.com" + data[indexPath.row].icon)!, options: Data.ReadingOptions.alwaysMapped)
        cell.imageView?.image = UIImage(data: image)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc = mainStoryboard.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        vc.giatri = data[indexPath.row]
        vc.vitri = indexPath.row
        present(vc, animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        URLRequest.requestAPI(urlString: "https://api.opendota.com/api/heroStats", completionHandle: { [weak self] result in
            guard let self = self else {return}
            self.data.append(contentsOf: result) 
            self.tableView.reloadData()
        })
        // Do any additional setup after loading the view.
    }


}

