//
//  SignupCodeViewController.swift
//  BTDangky
//
//  Created by Linh Nguyen Van on 3/27/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import UIKit
var key5 = "value5"
class SignupCodeViewController: UIViewController {
    static func newInstance() -> SignupCodeViewController {
        return SignupCodeViewController()
    }
    @IBOutlet weak var codeInviteTextField: UITextField!
    
    @IBAction func completeButtonTapped(_ sender: UIButton) {
        let detailVC = ThongtinTKViewController.newInstance()
        Infor.infor?.signupParament?.inviteCode = codeInviteTextField.text
               UserDefaults.standard.set(codeInviteTextField.text, forKey: key5)
               self.navigationController?.pushViewController(detailVC, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       if let value5 = UserDefaults.standard.string(forKey: key5){
        let detailVC = ThongtinTKViewController.newInstance()
               self.codeInviteTextField.text = value5
            self.navigationController?.pushViewController(detailVC, animated: true)
        }

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
