//
//  ViewController.swift
//  You Are Awesome!!
//
//  Created by Michael Ryan on 9/1/20.
//  Copyright © 2020 Michael Ryan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    
    var messageNumber = -1
    let totalNumberOfImages = 9
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!", "You Are Great!","When The Genius Bar Needs Help, They Call You", "You Are Fantastic!", "Fabulous?, That's You!", "You've Got the Design Skills of Jony Ive!" ]
        
        var newMessageNumber: Int
        
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
       
        imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages-1))")
        var newImageNumber: Int
        
        repeat {
            newImageNumber = Int.random(in: 0...totalNumberOfImages-1)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        if let sound = NSDataAsset(name: "sound0") {
            do {
               try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {print("😡 ERROR: \(error.localizedDescription) Could Not Initialize AVAudioPlayer Object")}
            
        }else {
            print("😡 ERROR:Could Not Read Data from File sound0")
        
    }
    

}

}
