//
//  ViewController.swift
//  ConcentrationGame
//
//  Created by Alexander Mukas on 17.10.2022.
//

import UIKit

class ViewController: UIViewController {

    var touches: Int = 0 {
        didSet {
            print("Now \(touches) taps...")
            touchLabel.text = "Touches : \(touches)"
        }
    }
    
    
    
    // function of flipping card
    func flipbutton(emoji: String, button: UIButton) {
        button.titleLabel?.font = .systemFont(ofSize: 65)
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = UIColor.systemBlue
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = UIColor.white
        }
    }
    
    let emojiCollection: Array = ["🦊", "🐰", "🦊", "🐰"]
    
    @IBAction func resetTouches(_ sender: UIButton) {
        touches = 0
        touchLabel.text = "Touches : \(touches)"
        //var button = ""
        for button in buttonCollection {
            button.setTitle("", for: .normal)
            button.backgroundColor = UIColor.systemBlue
        }
    }
    
    
    @IBOutlet var buttonCollection: [UIButton]!
    @IBOutlet weak var touchLabel: UILabel!
    
    @IBAction func buttonAction(_ sender: UIButton) {
        touches += 1
        // index button inject emoji index in array
        if let buttonIndex = buttonCollection.firstIndex(of: sender) {
            flipbutton(
                    emoji: emojiCollection[buttonIndex],
                    button: sender)
        }
        
    }
    
}

