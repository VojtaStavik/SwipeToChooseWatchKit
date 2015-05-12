//
//  GameManager.swift
//  SwipeToChooseWatchKit
//
//  Created by Vojta Stavik on 12/05/15.
//  Copyright (c) 2015 STRV. All rights reserved.
//

import UIKit

let game = GameManager()

class GameManager: GeneratorType {

    struct Beatle {
        
        let image: UIImage
        let name: String
    }
    
    private let names = ["John", "Paul", "George", "Ringo"]
    private let images = [UIImage(named: "john")!, UIImage(named: "paul")!, UIImage(named: "george")!, UIImage(named: "ringo")!]
    
    typealias Element = Beatle
    
    func next() -> Element? {
        
        return Beatle(image: images[randomNumber()], name: names[randomNumber()])
    }
    
    private func randomNumber() -> Int {
        
        return Int(arc4random_uniform(4))
    }
}