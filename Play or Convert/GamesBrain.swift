//
//  GamesBrain.swift
//  Play or Convert
//
//  Created by Ziaul Choudhury on 12/3/17.
//  Copyright © 2017 Ziaul Choudhury. All rights reserved.
//

import UIKit

func setRandomColor() -> UIColor { // gives random color
    let brain = BrainForMyGames()
    
    let colorValue = brain.randonNumberGenerator(max: 7)
    if colorValue == 0 || colorValue == 1{
        return UIColor.red
    }else if colorValue == 2 || colorValue == 3{
        return UIColor.green
    }else if colorValue >= 4 && colorValue <= 6{
        return UIColor.purple
    }
    return UIColor.blue
}



struct BrainForMyGames {
    
    // gives randon number 0-max
    func randonNumberGenerator(max: UInt32)-> Int{
        let min : UInt32 = 1
        //let max : UInt32 = 10
        let randomNumber = arc4random_uniform(max - min) + min
        return Int(randomNumber)
    }
    
    // gives randon card
    func randomCardArray()-> String{ // gives randon card
        let myCardArray = ["Ace","King","Queen","Jack","2","3","4",
                           "5","6","7","8","9","10"]
        let randomIndex = Int(arc4random_uniform(UInt32(myCardArray.count)))
        return (myCardArray[randomIndex])
    }
    
    // gives randon card symbol
    func randomSymbolArray()-> String{ // gives random card symbol
        let mySymbolArray = ["♠️","❤️","♦️","♣️"]
        let randomIndex = Int(arc4random_uniform(UInt32(mySymbolArray.count)))
        return (mySymbolArray[randomIndex])
    }
    
    // combine symbol and card and palyer score
    mutating func getTheCradsAndScore()-> (String, Int){
        
        var cardGamreScore = -50
        
        let typeOne = randomCardArray()
        let typeTwo = randomCardArray()
        let typeThree = randomCardArray()
        let typeFour = randomCardArray()
        
        let kindOne = randomSymbolArray()
        let kindTwo = randomSymbolArray()
        let kindThree = randomSymbolArray()
        let kindFour = randomSymbolArray()
        
        let cardOne = kindOne + " " + typeOne
        let cardTwo = " | " + kindTwo + " " + typeTwo
        let cardThree = " | " + kindThree + " " + typeThree
        let cardFour = " | " + kindFour + " " + typeFour
        
        let displayCardString = cardOne + cardTwo + cardThree + cardFour
        
        if (cardOne == cardTwo && cardTwo == cardThree && cardThree == cardFour){
            cardGamreScore = 300
            return (displayCardString, cardGameScoreSum(b: cardGamreScore))
            
        }else if(kindOne == kindTwo && kindTwo == kindThree && kindThree == kindFour){
            cardGamreScore = 200
            return (displayCardString, cardGameScoreSum(b: cardGamreScore))
            
        }else if (typeOne == "Ace" && typeTwo == "Ace" && typeThree == "Ace" && typeFour == "Ace"){
            cardGamreScore = 10000
            return (displayCardString, cardGameScoreSum(b: cardGamreScore))
            
        }else if (typeOne == "King" && typeTwo == "King" && typeThree == "King" && typeFour == "King"){
            cardGamreScore = 5000
            return (displayCardString, cardGameScoreSum(b: cardGamreScore))
            
        }else if (typeOne == "Queen" && typeTwo == "Queen" && typeThree == "Queen" && typeFour == "Queen"){
            cardGamreScore = 2500
            return (displayCardString, cardGameScoreSum(b: cardGamreScore))
            
        }else if (typeOne == "Jack" && typeTwo == "Jack" && typeThree == "Jack" && typeFour == "Jack"){
            cardGamreScore = 1750
            return (displayCardString, cardGameScoreSum(b: cardGamreScore))
            
        }else if (cardOne == cardTwo && cardTwo == cardThree && cardThree == cardFour
            && kindOne == kindTwo && kindTwo == kindThree && kindThree == kindFour ){
            cardGamreScore = 1500
            return (displayCardString, cardGameScoreSum(b: cardGamreScore))
            
        }
        
        return (displayCardString, cardGamreScore)
        
        
    }
    
    
    // calcultes score
    public var e = 1000
    mutating func cardGameScoreSum(b: Int)-> Int {
        if (b > 0){
            e = e + b
            return e
        }
        e += b
        return e
    }
}
