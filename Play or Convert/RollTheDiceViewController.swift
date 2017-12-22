//
//  RollTheDiceViewController.swift
//  Play or Convert
//
//  Created by Ziaul Choudhury on 12/3/17.
//  Copyright © 2017 Ziaul Choudhury. All rights reserved.
//

import UIKit

class RollTheDiceViewController: UIViewController {
    
    var brain = BrainForMyGames()
    var scoreForPlayer = 0
    var scoreForCPU = 0
    
    // roll dice for Player and assagin image for Player imageViewer
    func rollDiceForPlayer() -> Int{
        
        let rndNumPlayer = brain.randonNumberGenerator(max: 7)
        
        switch rndNumPlayer {
        case 1:
            playerDice.image = UIImage(named: "1.png")
            break
        case 2:
            playerDice.image = UIImage(named: "2.png")
            break
        case 3:
            playerDice.image = UIImage(named: "3.png")
            break
        case 4:
            playerDice.image = UIImage(named: "4.png")
            break
        case 5:
            playerDice.image = UIImage(named: "5.png")
            break
        case 6:
            playerDice.image = UIImage(named: "6.png")
            break
        default:
            playerDice.image = UIImage(named: "roll_the_dice.png")
            break
            
        }
        return rndNumPlayer
    }
    
    // roll dice for CPU and assagin image for CPU imageViewer
    func rollDiceForCPU() -> Int{
        
        let rndNumCPU = brain.randonNumberGenerator(max: 7)
        
        switch rndNumCPU {
        case 1:
            cpuDice.image = UIImage(named: "1.png")
            break
        case 2:
            cpuDice.image = UIImage(named: "2.png")
            break
        case 3:
            cpuDice.image = UIImage(named: "3.png")
            break
        case 4:
            cpuDice.image = UIImage(named: "4.png")
            break
        case 5:
            cpuDice.image = UIImage(named: "5.png")
            break
        case 6:
            cpuDice.image = UIImage(named: "6.png")
            break
        default:
            cpuDice.image = UIImage(named: "roll_the_dice.png")
            break
            
        }
        return rndNumCPU
    }
    
    
    
    @IBOutlet weak var bannerDisplay: UILabel!
    
    @IBOutlet weak var playerDice: UIImageView!
    
    @IBOutlet weak var cpuDice: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    
    @IBOutlet weak var cpuScore: UILabel!
    
    // roll and count score
    @IBAction func rollButton(_ sender: Any) {
        let player = rollDiceForPlayer()
        let cpu = rollDiceForCPU()
        
        if (player > cpu) {
            scoreForPlayer += 1
        } else if ( player < cpu ) {
            scoreForCPU += 1
        } else if ( player == cpu ) {
            scoreForPlayer += 1
            scoreForCPU += 1
        }
        
        bannerDisplay.textColor = setRandomColor()
        playerScore.text! = "\(scoreForPlayer)"
        cpuScore.text! = "\(scoreForCPU)"
        
        if (scoreForPlayer > scoreForCPU) && scoreForPlayer == 15 {
            playerScore.text = "YOU WIN"
            cpuScore.text = "☹️"
            
            scoreForCPU = 0
            scoreForPlayer = 0
        }else if (scoreForPlayer < scoreForCPU) && scoreForCPU == 15 {
            cpuScore.text = "CPU WIN"
            playerScore.text = "☹️"
            scoreForCPU = 0
            scoreForPlayer = 0
            
        }else if (scoreForPlayer == 15 && scoreForCPU == 15) {
            playerScore.text = "Draw"
            cpuScore.text = "Draw"
            scoreForCPU = 0
            scoreForPlayer = 0
        }
        
    }
    
    // reset
    @IBAction func resetButton(_ sender: Any) {
        scoreForCPU = 0
        scoreForPlayer = 0
        playerDice.image = UIImage(named: "Dice_game_Rules.png")
        cpuDice.image = UIImage(named: "Dice_game_Rules.png")
        bannerDisplay.textColor = UIColor.black
        playerScore.text! = "Player Score"
        cpuScore.text! = "CPU Score"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Roll The Dice Game"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
