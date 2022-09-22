//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    //IBOutler zar resmini ctrl ile buraya monte ettik ve ismini yazdık
    @IBOutlet weak var diceImageView2: UIImageView!
    

    @IBAction func RollButtonPressed(_ sender: UIButton) {
        //buttpn u ctrl ile buraya tanımladık
        let diceArrey = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        // diceArrey adında [image literal, *6)
        
        diceImageView1.image = diceArrey [Int.random(in: 0...5)]
        
        //who.what = sonuç   .image ile uygulamadaki image asset'i dosyadaki resimlerle birleştirdik, zar resmini diceArrey arasından rastgele seçtirdik
        diceImageView2.image = diceArrey.randomElement()
        // rastgele sayı seçmenin diğer kodu, random Element öndeki dosyaya bakar ve rastgele birini seçer
}
    
}
