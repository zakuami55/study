//
//  SigupNumberViewController.swift
//  BTDangky
//
//  Created by Linh Nguyen Van on 3/27/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import UIKit
var key2 = "value2"
class SignupNumberViewController: UIViewController {
    static func newInstance() -> SignupNumberViewController {
        return SignupNumberViewController()
    }

    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBAction func secondNextButtonTapped(_ sender: UIButton) {
        let detailVC = OTPViewController.newInstance()
        Infor.infor?.signupParament?.phoneNumber = phoneNumberTextField.text
        UserDefaults.standard.set(phoneNumberTextField.text, forKey: key2)
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if let value2 = UserDefaults.standard.string(forKey: key2){
                   let detailVC = OTPViewController.newInstance()
                          self.phoneNumberTextField.text = value2
//                   UIView.animate(withDuration: 1) {
                       self.navigationController?.pushViewController(detailVC, animated: true)
//                   }
               }
//        self.navigationController?.pushViewController(OTPViewController.newInstance(), animated: true)

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
