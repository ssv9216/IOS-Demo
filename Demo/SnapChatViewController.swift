//
//  SnapChatViewController.swift
//  Demo
//
//  Created by Sohan on 28/10/20.
//  Copyright © 2020 Sohan. All rights reserved.
//

import UIKit

class SnapChatViewController: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)

        let v1: V1 = V1(nibName: "V1", bundle: nil)
        self.addChild(v1)
        self.scrollView.addSubview(v1.view)
        v1.didMove(toParent: self)
        
        let v2: V2 = V2(nibName: "V2", bundle: nil)
        self.addChild(v2)
        self.scrollView.addSubview(v2.view)
        v2.didMove(toParent: self)
        
        var v2Frame: CGRect = v2.view.frame
        v2Frame.origin.x = self.view.frame.width
        v2.view.frame = v2Frame
        
        
        let v3: view3 = view3(nibName: "view3", bundle: nil)
        self.addChild(v3)
        self.scrollView.addSubview(v3.view)
        v3.didMove(toParent: self)
        
        var v3Frame: CGRect = v3.view.frame
        v3Frame.origin.x = self.view.frame.width * 2
        v3.view.frame = v3Frame
        
        self.scrollView.contentSize = CGSize(width: self.view.frame.width * 3, height: self.view.frame.height)
    }
    

}
