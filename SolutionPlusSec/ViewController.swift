//
//  ViewController.swift
//  SolutionPlusSec
//
//  Created by Apple on 11/03/2024.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Instantiate CustomView from XIB
        let myCustomView = CustomView()
        
        // Customize the view as needed
        myCustomView.configure(withTitle: "Hello")
        
        // Add CustomView to the main view
        view.addSubview(myCustomView)
        
        // Customize the frame or layout of the custom view if needed
        myCustomView.frame = CGRect(x: 50, y: 100, width: 300, height: 200)
    }
}
