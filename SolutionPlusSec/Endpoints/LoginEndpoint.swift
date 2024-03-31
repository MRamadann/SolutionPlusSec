//
//  LoginEndpoint.swift
//  SolutionPlusSec
//
//  Created by Apple on 30/03/2024.
//

import Foundation
import MyUIUtilities

enum loginEndpoint {
    case loginRequest
}

extension loginEndpoint : Endpoint {
    var path: String {
        switch self {
        case .loginRequest:
            return "https://dummyjson.com/auth/login"
        }
    }
    var method: HTTPMethod {
        switch self {
        case .loginRequest:
            return .post
        }
    }
    var header: [String : String]? {
        switch self {
        case .loginRequest:
            return [ "Content-Type": "application/json"]
        }
    }
    var body: Data? {
//        switch self {
//        case .loginRequest:
//            return try? JSONEncoder().encode(LoginRequest(userName: "kminchelle", password: "0lelplR"))
//        }
        
        switch self {
        case .loginRequest:
            // Encode your LoginRequest object to JSON data
            do {
                let loginRequest = LoginRequest(userName: "kminchelle", password: "0lelplR")
                return try JSONEncoder().encode(loginRequest)
            } catch {
                print("Error encoding login request: \(error)")
                return nil
            }
        }
    }
    var scheme: String? {
        return ""
    }
    
    var host: String? {
        return ""
    }
}
