//
//  ViewController.swift
//  Concentration
//
//  Created by Mark Yakovlev on 16.09.2020.
//  Copyright © 2020 Mark Yakovlev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices: Array<String> = ["👻","🎃","👻","🎃"]
    
    var flipCount = 0 {
        didSet{
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender){
            flipcard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("Chosen card wasn't in cardButtons")
        }
    }
    
    func flipcard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.969511807, green: 0.5498070121, blue: 0, alpha: 1)
        }
        else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        }
    }
}

