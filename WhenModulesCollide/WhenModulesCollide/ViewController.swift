//
//  ViewController.swift
//  WhenModulesCollide
//
//  Created by Chris Downie on 10/13/19.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

import UIKit
// Uncomment this line if you'd like to include StringExtensionOne's extensions to String
//import StringExtensionOne

// Uncomment this line if you'd like to include StringExtensionTwo's extensions to String
//import StringExtensionTwo

class ViewController: UIViewController {
    @IBOutlet var collisionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Once the view is loaded, show the colliding computed property
        display(text: "string".collision)
    }
    
    
    
    
    /// Display the string in the UI & log it to the console
    /// - Parameter text: The string to display
    func display(text: String) {
        collisionLabel.text = text
        print(text)
    }
}

