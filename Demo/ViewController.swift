//
//  ViewController.swift
//  Demo
//
//  Created by Sohan on 22/10/20.
//  Copyright © 2020 Sohan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var time: UILabel!
    
    
    @IBOutlet weak var playButton: UIButton!
    
    
    @IBOutlet weak var pauseButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    var counter = 0.0{
    didSet{
        time.text = String(format:"%.1f" ,counter)
        }
    }
    
    var timer : Timer? = Timer()
    var isPlaying = false
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return UIStatusBarStyle.darkContent
    }
    
    @IBAction func playButton(_ sender: Any) {
        startTimer()
        isPlaying = true
        playButton.isEnabled = false
        pauseButton.isEnabled = true

    }
    
    @IBAction func pauseButton(_ sender: Any) {
        if let _ = timer {
            timer?.invalidate()
        }
        playButton.isEnabled = true
        pauseButton.isEnabled = false
        isPlaying = false
    }
    
    

    @IBAction func resetButton(_ sender: Any) {
        counter = 0
        timer?.invalidate()
        pauseButton.isEnabled = false
        playButton.isEnabled = true
        isPlaying = false
        print("Hello")
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer(){
        counter += 0.1
    }
    
}

