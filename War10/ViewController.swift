//
//  ViewController.swift
//  War10
//
//  Created by Sain-R Edwards Jr. on 7/16/17.
//  Copyright © 2017 Sain-R Edwards Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftCardImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    
    @IBOutlet weak var rightCardImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    
    let cardImages = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealButton(_ sender: Any) {
        
        // Randomize left number
        let leftNumber = Int(arc4random_uniform(13))
        
        // Assign left card image with left number
        leftCardImageView.image = UIImage(named: cardImages[leftNumber])
        
        // Randomize right number
        let rightNumber = Int(arc4random_uniform(13))
        
        // Assign right card image with right number
        rightCardImageView.image = UIImage(named: cardImages[rightNumber])
        
        // Determine scoring
        if leftNumber > rightNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber == rightNumber {
                // It's a tie!
            }
            
        else {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
    }
    
}

