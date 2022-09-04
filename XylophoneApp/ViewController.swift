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

    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        
        player = try! AVAudioPlayer(contentsOf: url!)
        
        player.play()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keysTapped(_ sender: UIButton) {
        
        //Reduces the sender's (the button that got pressed) opacity to half. By default its value is 1
        sender.alpha = 0.5
        
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1
        }
        playSound(soundName: sender.currentTitle!)
    }
}

