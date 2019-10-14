//
//  ViewController.swift
//  WhenModulesCollide
//
//  Created by Chris Downie on 10/13/19.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

import UIKit
import StringExtensionOne
import StringExtensionTwo

class ViewController: UIViewController {
    @IBOutlet var collisionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Once the view is loaded, show the colliding computed property
        display(text: "string".collision)
    }
    
    func display(text: String) {
        collisionLabel.text = text
        print(text)
    }
}

