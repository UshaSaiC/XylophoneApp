//
//  ViewController.swift
//  XylophoneApp
//
//  Created by Usha Sai Chintha on 04/09/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    func playSound() {
        // getting the location of C.wav file
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        
        // keeping the file (url) into player
        player = try! AVAudioPlayer(contentsOf: url!)
        
        // playing the sound
        player.play()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    //IBAction (Interface Builder Action) is a funtion which is not called by us but when an action happens on UI linked to the IBAction.. then the block of code gets executed
    // (_ sender: UIButton) --> inputs to function
    // Dragging the outlet connection formed in this file to all other keys on UI of Main.storyboard
    //Now linked all the 7 buttons to below IBAction
    @IBAction func cKeyClicked(_ sender: UIButton) {
        print(sender.backgroundColor)// prints the color of sender button hich is basically the button tapped by user
        
        /*
         We can get the title of button in 3 ways :
         1. sender.title(for: .normal)
         2. sender.titleLabel?.text
         3. sender.currentTitle
        */
        print(sender.currentTitle)
        playSound()
    }
}

