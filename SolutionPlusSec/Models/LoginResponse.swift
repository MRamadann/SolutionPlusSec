//
//  LoginResponse.swift
//  SolutionPlusSec
//
//  Created by Apple on 30/03/2024.
//

import Foundation

struct LoginResponse: Codable {
    let token: String
    let id: Int
    let username, email, firstName, lastName: String
    let gender: String
    let image: String
    
}
