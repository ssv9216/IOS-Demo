//
//  SeventhCell.swift
//  Demo
//
//  Created by Sohan on 29/10/20.
//  Copyright © 2020 Sohan. All rights reserved.
//

import UIKit

class SeventhCell: UITableViewCell {

    @IBOutlet weak var eLabel: UILabel!
    
    static var identifier = "SeventhCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        eLabel.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}

 
