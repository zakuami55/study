//
//  ThongtinTKViewController.swift
//  BTDangky
//
//  Created by Linh Nguyen Van on 3/27/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import UIKit

class ThongtinTKViewController: UIViewController {
    static func newInstance() -> ThongtinTKViewController {
        return ThongtinTKViewController()
    }

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var otpCodeLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var inviteCodeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
