//
//  LoginService.swift
//  SolutionPlusSec
//
//  Created by Apple on 30/03/2024.
//

import Foundation
import MyUIUtilities

protocol LoginServiceable {
    func getLoginResponse() async -> Result<LoginResponse, RequestError>
}
class LoginService : HTTPClient , LoginServiceable {
    func getLoginResponse() async -> Result<LoginResponse, RequestError> {
        return await sendRequest(endpoint: loginEndpoint.loginRequest, responseModel: LoginResponse.self)
    }
}
