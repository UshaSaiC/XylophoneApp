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


    @IBAction func cKeyClicked(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
    }
}

