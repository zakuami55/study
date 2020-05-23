//
//  SignupNameViewController.swift
//  BTDangky
//
//  Created by Linh Nguyen Van on 3/27/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import UIKit

class SignupNameViewController: UIViewController {

    var key1 = "value1"
    static func newInstance() -> SignupNameViewController {
        return SignupNameViewController()
    }

    @IBOutlet weak var fullNameTextField: UITextField!
        
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        let detailVC1 = SignupNumberViewController.newInstance()
        Infor.infor?.signupParament?.fullName = fullNameTextField.text
        UserDefaults.standard.set(fullNameTextField.text, forKey: key1)
        self.navigationController?.pushViewController(detailVC1, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if let value1 = UserDefaults.standard.string(forKey: key1){
            let detailVC1 = SignupNumberViewController.newInstance()
                   self.fullNameTextField.text = value1
//            UIView.animate(withDuration: 1) {
                self.navigationController?.pushViewController(detailVC1, animated: true)
//            }
        }
    }
}
