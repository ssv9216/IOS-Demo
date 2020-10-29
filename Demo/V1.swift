//
//  V1.swift
//  Demo
//
//  Created by Sohan on 28/10/20.
//  Copyright © 2020 Sohan. All rights reserved.
//

import UIKit

class V1: UIViewController {

    var usersName = ["A", "B", "C", "D", "E", "F", "G"]
    
    @IBOutlet weak var snapChatTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let nib = UINib(nibName: "SnapchatTableViewCell", bundle: nil)
        snapChatTableView.register(nib, forCellReuseIdentifier: "cell")
        
        snapChatTableView.delegate = self
        snapChatTableView.dataSource = self
        
        
    }

    
   
    
}

extension V1: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}

extension V1: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        tableView.register(SnapchatTableViewCell.self, forCellReuseIdentifier: "cell")
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SnapchatTableViewCell
//        cell.sLabel.text = usersName[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SnapchatTableViewCell
        cell.sLabel?.text = usersName[indexPath.row]
        print(usersName[indexPath.row])
        return cell
    }
    
    
}


