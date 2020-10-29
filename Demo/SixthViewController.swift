//
//  SixthViewController.swift
//  Demo
//
//  Created by Sohan on 29/10/20.
//  Copyright © 2020 Sohan. All rights reserved.
//

import UIKit
import SPPermission

class SixthViewController: UIViewController {

    
    @IBOutlet weak var locationBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func locationBtn(_ sender: Any) {
        
        getLocationPermission()
    }
    
    func getLocationPermission(){
        if !SPPermission.isAllowed(.locationAlwaysAndWhenInUse) {
            SPPermission.Dialog.request(with: [.locationAlwaysAndWhenInUse], on: self)
        }
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
