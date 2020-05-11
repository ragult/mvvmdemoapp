//
//  LoginValidation.swift
//  MvvmDemoApp
//
//  Created by Ragul kts on 11/05/20.
//  Copyright © 2020 Ragulkts. All rights reserved.
//

import Foundation

struct LoginValidation {

    func Validate(loginRequest: LoginRequest) -> ValidationResult
    {
        if(loginRequest.userEmail!.isEmpty)
        {
            return ValidationResult(success: false, error: "User email is empty")
        }
        if(loginRequest.userPassword!.isEmpty)
        {
            return ValidationResult(success: false, error: "User password is empty")
        }
        if(!loginRequest.userEmail!.isValidEmail)
        {
            return ValidationResult(success: false, error: "Enter valid email address")
        }
        if(loginRequest.userPassword!.count < 5)
        {
            return ValidationResult(success: false, error: "Minimum 5 characters required for password")
        }
        return ValidationResult(success: true, error: nil)
    }

}
