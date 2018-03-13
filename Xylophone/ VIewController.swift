//
//  ViewController.swift
//  Xylophone


import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(selectedSoundFile: soundArray[sender.tag - 1])
       
    }
    
    func playSound(selectedSoundFile : String) {
        
        let soundURL = Bundle.main.path(forResource: selectedSoundFile, ofType: "wav")!
     
        let url = URL(fileURLWithPath: soundURL)

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer.play()
        }
        catch {
            // error message
            print(error)
        }
    }
}

