//
//  ViewController.swift
//  You Are Awesome!!
//
//  Created by Michael Ryan on 9/1/20.
//  Copyright © 2020 Michael Ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("👍 View Did Load Has Run!")
        messageLabel.text = "Fabulous? That's You!"
    }
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎 The message button was pressed!")
        messageLabel.text = "You Are Awesome!"
    }
    

}

