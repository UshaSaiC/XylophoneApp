//
//  ViewController.swift
//  XylophoneApp
//
//  Created by Usha Sai Chintha on 04/09/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    // below function is copy pasted from stack over flow
    func playSound() {
        
        // getting C.wav file from the resources in this project using Bundle.main keyword
        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return }

        do {
            // making sure that audio is played even when phone is silent via using category as .playback
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            // telling audio player that we have to play url file i.e C.wav file
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func cKeyClicked(_ sender: UIButton) {
        print("c key pressed")
        playSound()
    }
}

