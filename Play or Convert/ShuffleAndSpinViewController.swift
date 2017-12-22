//
//  ShuffleAndSpinViewController.swift
//  Play or Convert
//
//  Created by Ziaul Choudhury on 12/3/17.
//  Copyright © 2017 Ziaul Choudhury. All rights reserved.
//

import UIKit

class ShuffleAndSpinViewController: UIViewController {
    
    var brain = BrainForMyGames()
    
    @IBOutlet weak var bannerDisplay: UILabel!
    
    @IBOutlet weak var cardDisplay: UILabel!
    
    @IBOutlet weak var cardGameScore: UILabel!
    
    // rerform oprations by calling BrainForMyGames
    @IBAction func spinButton(_ sender: Any) {
        
        let finalValue = brain.getTheCradsAndScore()
        let dispVal = finalValue.0
        let socreVal = brain.cardGameScoreSum(b:finalValue.1)
        cardDisplay.text = dispVal
        cardGameScore.text = "\(socreVal)"
        bannerDisplay.textColor = setRandomColor()
        if socreVal < 0 {
            cardDisplay.text = "You've lost!!!"
            bannerDisplay.text = "Game reseted!!"
            cardGameScore.text = "You've lost, game reseted"
            brain.e = 1000
        }
    }
    
    // reset
    @IBAction func resetGame(_ sender: Any) {
        
        brain.e = 1000
        cardDisplay.text = "Spin 4 Cards !!"
        cardGameScore.text = "Player's Score"
        bannerDisplay.textColor = UIColor.black
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Shuffle & Spin Game"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
