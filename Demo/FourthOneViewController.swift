//
//  FourthOneViewController.swift
//  Demo
//
//  Created by Sohan on 28/10/20.
//  Copyright © 2020 Sohan. All rights reserved.
//

import UIKit

class FourthOneViewController: UIViewController {
  
    
    var data:String?
    
    @IBOutlet weak var llabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        llabel.text = data
       
    }
    

    @IBAction func back(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
