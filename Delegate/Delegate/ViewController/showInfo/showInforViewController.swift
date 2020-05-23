//
//  showInforViewController.swift
//  Delegate
//
//  Created by Linh Nguyen Van on 4/16/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import UIKit

class showInforViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    var data: [SinhVien] = []
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.
       }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
