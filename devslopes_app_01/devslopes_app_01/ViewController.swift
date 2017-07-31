//
//  ViewController.swift
//  devslopes_app_01
//
//  Created by Benjamin on 28/07/2017.
//  Copyright © 2017 Benjamin. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var darkBlueBG: UIImageView!

    @IBOutlet weak var powerButton: UIButton!
    
    @IBOutlet weak var cloudHolder: UIView!
    
    @IBOutlet weak var rocket: UIImageView!
    
    @IBOutlet weak var programmingLbl: UILabel!
    
    @IBOutlet weak var onLbl: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }   catch let error as NSError{
                print(error.description)
            }
    }


    @IBAction func powerButtonPressed(_ sender: Any) {
        
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerButton.isHidden = true
        
        UIView.animate(withDuration: 2.3, animations: { 
            
        }) { (finished) in
            
        }
        
        
    }
}

