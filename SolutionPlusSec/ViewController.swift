//
//  ViewController.swift
//  SolutionPlusSec
//
//  Created by Apple on 11/03/2024.
//

import UIKit

class ViewController: UIViewController {
    
    // Instantiate your LoginService
    let loginService = LoginService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // When the view loads, initiate the login process
        fetchLoginResponse()
    }
    
    func fetchLoginResponse() {
        // Asynchronous block to perform the async operation
        async {
            do {
                // Call the async method to get the login response
                let result = try await loginService.getLoginResponse()
                
                // Handle the result
                switch result {
                // If login is successful, process the response
                case .success(let loginResponse):
                    // Print or use the loginResponse here
                    print("Login response: \(loginResponse)")
                    
                    // You can update UI elements here with the login response if needed
                // If login fails, handle the error
                case .failure(let error):
                    // Print or handle the error
                    print("Error: \(error)")
                    
                    // You can update UI elements here to show an error message or handle the error appropriately
                }
            } catch {
                // Handle any other errors that might occur during the async operation
                print("Error: \(error)")
                
                // You can update UI elements here to show an error message or handle the error appropriately
            }
        }
    }
}


