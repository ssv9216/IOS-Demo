//
//  Second_ViewController.swift
//  Demo
//
//  Created by Sohan on 27/10/20.
//  Copyright © 2020 Sohan. All rights reserved.
//

import UIKit

class Second_ViewController: UIViewController {
    
    
    @IBOutlet weak var fontToChange: UILabel!

    var fontNames = ["Bodoni Ornaments",
                         "Symbol",
                         "Noto Nastaliq Urdu",
                         "Zapfino",
                         "Kohinoor Devanagari"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

//            for family in UIFont.familyNames.sorted(){
//                print("Font Family \(family) Font name: ")
//            }
        }
    
    
    
     
    
    @IBAction func changeFontStyle(_ sender: Any) {
        
        let fontStyle: String = fontNames[Int.random(in: 0..<fontNames.count)]
        print(fontStyle)
        //fontToChange.font = UIFont(name: fontStyle, size: 35.0)
        fontToChange.font = UIFont(name: fontStyle, size: 18)
    }
    
   
}
