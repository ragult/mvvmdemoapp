//
//  LoginRequest.swift
//  MvvmDemoApp
//
//  Created by Ragul kts on 11/05/20.
//  Copyright © 2020 Ragulkts. All rights reserved.
//

import Foundation

struct LoginRequest : Encodable
{
    var userEmail, userPassword: String?
}
