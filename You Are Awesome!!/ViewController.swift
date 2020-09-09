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
    var totalNumberOfSounds = 6
    var soundNumber = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func playSound(name:String) {
        if let sound = NSDataAsset(name: name) {
                do {
                   try audioPlayer = AVAudioPlayer(data: sound.data)
                    audioPlayer.play()
                } catch {print("😡 ERROR: \(error.localizedDescription) Could Not Initialize AVAudioPlayer Object")}
                
            }else {
                print("😡 ERROR:Could Not Read Data from File sound0")
            
        }
    }
    
    func nonRepeatingRandom(originalNumber:Int, upperLimit: Int) -> Int {
        var newNumber: Int
        
        repeat {
            newNumber = Int.random(in: 0...upperLimit)
        } while originalNumber == newNumber
        return newNumber
        
    }
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!", "You Are Great!","When The Genius Bar Needs Help, They Call You", "You Are Fantastic!", "Fabulous?, That's You!", "You've Got the Design Skills of Jony Ive!" ]
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messages.count-1)
        messageLabel.text = messages[messageNumber]
       imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberOfImages-1)
        imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages-1))")
        imageView.image = UIImage(named: "image\(imageNumber)")
        
soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberOfSounds-1)
    playSound(name: "sound\(soundNumber)")
    }

}
