//
//  SignupParament.swift
//  BTDangky
//
//  Created by Linh Nguyen Van on 3/27/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import Foundation
class SignupParament {
    var fullName: String?
    var phoneNumber: String?
    var otpCode: String?
    var password: String?
    var inviteCode: String?
}
class Infor {
    static var infor: Infor?
    var signupParament: SignupParament?
    private init(){}
}
