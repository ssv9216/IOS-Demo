//
//  home.swift
//  Demo
//
//  Created by Sohan on 27/10/20.
//  Copyright © 2020 Sohan. All rights reserved.
//

import UIKit

class home: UIViewController {

    @IBOutlet weak var task1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Home"
        task1.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
        
        //add controller
        let AlertViewController = UIAlertController(title: "Test", message: "Demo app", preferredStyle: UIAlertController.Style.alert)
        //add action
        AlertViewController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        AlertViewController.addAction(UIAlertAction(title: "continue", style: UIAlertAction.Style.default, handler: { (UIAlertAction) in
                print("continue")
        }))
        //show dialog
        self.present(AlertViewController, animated: true, completion: nil)
    }
    
    @IBAction func to_task_1(_ sender: Any) {
        
        let  to_task_one = (self.storyboard?.instantiateViewController(identifier: "ViewController")) as! ViewController
        
        self.navigationController?.pushViewController(to_task_one, animated: true)
       // present(to_task_one, animated: false)
        
    }
    
    @IBAction func to_task_two(_ sender: Any) {
        
        let  to_task_two = (self.storyboard?.instantiateViewController(identifier: "Second_ViewController")) as! Second_ViewController
        
        self.navigationController?.pushViewController(to_task_two, animated: true)
    }
    
    
    @IBAction func to_task_three(_ sender: Any) {
        
        let to_task_three =
            (self.storyboard?.instantiateViewController(identifier: "ThirdViewController")) as! ThirdViewController
        
        self.navigationController?.pushViewController(to_task_three, animated: true)
    }
    
    @IBAction func to_task_four(_ sender: Any) {
        
        let to_task_four =
            (self.storyboard?.instantiateViewController(identifier: "FourthViewController")) as! FourthViewController
        
        self.navigationController?.pushViewController(to_task_four, animated: true)
    }
    
    @IBAction func startSnapChat(_ sender: Any) {
        let to_Snapchat =
            (self.storyboard?.instantiateViewController(identifier: "SnapChatViewController")) as! SnapChatViewController
        self.navigationController?.pushViewController(to_Snapchat, animated: true)
    }
    
    
    @IBAction func to_task_five(_ sender: Any) {
        let to_task_five = (self.storyboard?.instantiateViewController(identifier: "FifthViewController")) as! FifthViewController
        self.navigationController?.pushViewController(to_task_five, animated: true)
    }
    
    
    @IBAction func sixthButton(_ sender: Any) {
        let to_task_six = (self.storyboard?.instantiateViewController(identifier: "SixthViewController")) as! SixthViewController
        self.navigationController?.pushViewController(to_task_six, animated: true)
    }
    
    
    @IBAction func seventhButton(_ sender: Any) {
        let to_task_seven = (self.storyboard?.instantiateViewController(identifier: "SeventhViewController")) as! SeventhViewController
        self.navigationController?.pushViewController(to_task_seven, animated: true)
    }
    
    
    @IBAction func eighthButton(_ sender: Any) {
        
        let to_eighth = (self.storyboard?.instantiateViewController(identifier: "EighthViewController")) as! EighthViewController
        self.navigationController?.pushViewController(to_eighth, animated: true)
    }
    
}
