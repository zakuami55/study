//
//  SignupPassViewController.swift
//  BTDangky
//
//  Created by Linh Nguyen Van on 3/27/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import UIKit
var key4 = "value4"
class SignupPassViewController: UIViewController {
    static func newInstance() -> SignupPassViewController {
        return SignupPassViewController()
        
    }

    @IBOutlet weak var yourPasswordTextField: UITextField!
    
    @IBAction func thirdNextButtonTapped(_ sender: UIButton) {
        let detailVC = SignupCodeViewController.newInstance()
        Infor.infor?.signupParament?.password = yourPasswordTextField.text
        UserDefaults.standard.set(yourPasswordTextField.text, forKey: key4)
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if let value4 = UserDefaults.standard.string(forKey: key4){
        let detailVC = SignupCodeViewController.newInstance()
               self.yourPasswordTextField.text = value4
            self.navigationController?.pushViewController(detailVC, animated: true)

        }
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
