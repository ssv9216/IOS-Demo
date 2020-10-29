//
//  SeventhViewController.swift
//  Demo
//
//  Created by Sohan on 29/10/20.
//  Copyright © 2020 Sohan. All rights reserved.
//

import UIKit

class SeventhViewController: UIViewController {

    let cellIdentifier = "cell"
    var index = 0
    
    @IBOutlet weak var tableView: UITableView!
        
    var favEmojis = ["🌳🌳🌳🌳","😇😇😇😇","🧐🧐🧐🧐"]
    var newFavEmojis = ["🌻🌻🌻🌻", "🐋🐋🐋🐋", "🏦🏦🏦🏦"]
    var emojiData = [String]()
    
    var emojiTableView: UITableView!
    var refreshControl = UIRefreshControl()
    var navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: 375, height: 64))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(navBar)
        emojiData = favEmojis
        
        emojiTableView = UITableView(frame: self.view.bounds, style: .plain)
//        tableView.backgroundColor = UIColor(red: 0.0092, green: 0.096, blue: 0.116, alpha: 1)
        //register nib
        let nib = UINib(nibName: "SeventhCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cell")
        
        //give delegate and datasource
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        
        tableView.refreshControl = refreshControl
        refreshControl.addTarget(self, action: #selector(SeventhViewController.didRefresh), for: .valueChanged)
    }

}

extension SeventhViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
}

//number of column
func numberOfSections(in tableView: UITableView) -> Int{
    return 1
}

extension SeventhViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! SeventhCell
        cell.eLabel.text = emojiData[indexPath.row]
        return cell
    }
    
    @objc func didRefresh(){
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3){
            
            self.emojiData = [self.newFavEmojis, self.favEmojis][self.index]
            self.tableView.reloadData()
            self.refreshControl.endRefreshing()
            self.index = (self.index + 1) % 2
            
        }
        
        
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return UIStatusBarStyle.lightContent
    }
    
}
