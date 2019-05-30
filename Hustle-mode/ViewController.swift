//
//  ViewController.swift
//  Hustle-mode
//
//  Created by AsMaa on 5/11/19.
//  Copyright © 2019 AsMaa. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLbl: UILabel!
    @IBOutlet weak var onLbl: UILabel!
    
    var player: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do{
          player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }catch let error{
            print(error.localizedDescription)
        }
    }

    @IBAction func powerBtnTapped(_ sender: Any) {
   cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerBtn.isHidden = true
       player.play()
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 155, width: 375, height: 325)
        }) { (finished) in
            self.hustleLbl.isHidden = false
            self.onLbl.isHidden = false
        }
        }
    }
    


