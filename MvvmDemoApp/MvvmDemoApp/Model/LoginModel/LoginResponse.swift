//
//  Login.swift
//  MvvmDemoApp
//
//  Created by Ragul kts on 11/05/20.
//  Copyright © 2020 Ragulkts. All rights reserved.
//

import Foundation

struct LoginResponse : Decodable {

    let errorMessage: String?
    let data: LoginResponseData?
}

struct LoginResponseData : Decodable
{
    let userName: String
    let userID: Int
    let email: String

    enum CodingKeys: String, CodingKey {
        case userName
        case userID = "userId"
        case email
    }
}
