//
//  LoginActiveViewController.swift
//  BTDangky
//
//  Created by Linh Nguyen Van on 3/27/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import UIKit

class LoginActiveViewController: UIViewController {
//    var key1 = "value1"

    static func newInstance() -> LoginActiveViewController {
        return LoginActiveViewController(nibName: "LoginActive", bundle: nil)
    }
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        self.navigationController?.pushViewController(SignupNameViewController.newInstance(), animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
}
