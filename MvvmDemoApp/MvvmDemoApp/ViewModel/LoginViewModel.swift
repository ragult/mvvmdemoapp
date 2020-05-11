//
//  LoginViewModel.swift
//  MvvmDemoApp
//
//  Created by Ragul kts on 11/05/20.
//  Copyright © 2020 Ragulkts. All rights reserved.
//

import Foundation

protocol LoginViewModelDelegate {
    func didReceiveLoginResponse(loginResponse: LoginResponse?)
}

struct LoginViewModel
{
    var delegate : LoginViewModelDelegate?

    func loginUser(loginRequest: LoginRequest)
    {
        let validationResult = LoginValidation().Validate(loginRequest: loginRequest)

        if(validationResult.success)
        {
            //use loginResource to call login API
            let loginResource = LoginResource()
            loginResource.loginUser(loginRequest: loginRequest) { (loginApiResponse) in

                //return the response we get from loginResource
                DispatchQueue.main.async {
                    self.delegate?.didReceiveLoginResponse(loginResponse: loginApiResponse)
                }
            }
        }
        self.delegate?.didReceiveLoginResponse(loginResponse: LoginResponse(errorMessage: validationResult.error, data: nil))
    }
}
