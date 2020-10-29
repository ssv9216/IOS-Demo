//
//  EighthViewController.swift
//  Demo
//
//  Created by Sohan on 29/10/20.
//  Copyright © 2020 Sohan. All rights reserved.
//

import UIKit

class EighthViewController: UIViewController {

    
    @IBOutlet weak var blurBack: UIVisualEffectView!
    @IBOutlet weak var randomMusicButton: UIButton!
    
    let gradientLayer = CAGradientLayer()
    
    var timer: Timer?
    
    var backgroundColor: (red: CGFloat, green: CGFloat, blue: CGFloat)!{
        didSet{
            let color1 = UIColor(red: backgroundColor.blue, green: backgroundColor.green, blue: 0, alpha: 1).cgColor
        
            let color2 = UIColor(red: backgroundColor.red, green: backgroundColor.green, blue: backgroundColor.blue, alpha: 1).cgColor
            
            
            gradientLayer.colors = [color1, color2]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blurBack.layer.masksToBounds = true
        
        self.blurBack.layer.cornerRadius = blurBack.frame.height/2
    
    }

    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    @IBAction func randomButton(_ sender: Any) {
        let redValue = CGFloat(drand48())
        let greenValue = CGFloat(drand48())
        let blueValue = CGFloat(drand48())
        
        self.view.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
        if (timer == nil) {
            timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(EighthViewController.randomColor), userInfo: nil, repeats: true)
        }else{
            timer?.invalidate()
        }
    
        gradientLayer.frame = view.bounds
//        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
//        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.locations = [0.0, 1.0]
        
        self.blurBack.layer.addSublayer(gradientLayer)
        
    }
    
    @objc func randomColor(){
        let redValue = CGFloat(drand48())
        let greenValue = CGFloat(drand48())
        let blueValue = CGFloat(drand48())
        print(Int.random(in: 0...3))
        backgroundColor = (redValue, greenValue, blueValue)
        
    }
}
