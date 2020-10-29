//
//  FourthViewController.swift
//  Demo
//
//  Created by Sohan on 27/10/20.
//  Copyright © 2020 Sohan. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let array = [
        "M.S.Dhoni",
        "Raina",
        "Jadeja",
        "Watson",
        "Bravo",
        "D.Chahar"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let custom_Cell = UINib(nibName: "custom_cellTableViewCell", bundle: nil)
        
        tableView.register(custom_Cell, forCellReuseIdentifier: "cell")
        tableView.separatorStyle = .none
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
}

extension FourthViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tap at \(indexPath)")
        
        let to_new = (self.storyboard?.instantiateViewController(identifier: "FourthOneViewController")) as! FourthOneViewController
        to_new.modalPresentationStyle = .fullScreen
        to_new.data = array[indexPath.row]
       self.present(to_new, animated: true, completion: nil)
//        self.navigationController?.pushViewController(to_new, animated: true)
        
        
        
    }
}

extension FourthViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! custom_cellTableViewCell
        
        cell.lab.text = array[indexPath.row]
        
        return cell
    }
    
  
    
}
