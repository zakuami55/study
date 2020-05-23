//
//  OTPViewController.swift
//  BTDangky
//
//  Created by Linh Nguyen Van on 3/27/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import UIKit

class OTPViewController: UIViewController {
    static func newInstance() -> OTPViewController {
        return OTPViewController()
    }

    @IBOutlet var otpTextField: [UITextField]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    self.navigationController?.pushViewController(SignupPassViewController.newInstance(), animated: true)

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
