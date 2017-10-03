//
//  ViewController.swift
//  Dicee
//
//  Created by Wilman Garcia De Leon on 10/1/17.
//  Copyright © 2017 wilidgasoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages ()
    }

    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
       updateDiceImages ()
    }
    
  func updateDiceImages () {
    randomDiceIndex1 = Int(arc4random_uniform(6))
    randomDiceIndex2 = Int(arc4random_uniform(6))
    diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
    diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    //        if(randomDiceIndex2==0){
    //           randomDiceIndex2 = 1
    //        }
    //        if(randomDiceIndex1==0){
    //            randomDiceIndex1 = 1
    //        }
    
    //        diceImageView1.image = UIImage(named: "dice" + String(randomDiceIndex1))
    //        diceImageView2.image = UIImage(named: "dice" + String(randomDiceIndex2))
    //        print(randomDiceIndex1)
    //        print(randomDiceIndex2)
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

