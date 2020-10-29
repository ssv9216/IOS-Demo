//
//  SnapchatTableViewCell.swift
//  Demo
//
//  Created by Sohan on 29/10/20.
//  Copyright © 2020 Sohan. All rights reserved.
//

import UIKit

class SnapchatTableViewCell: UITableViewCell {

    
    @IBOutlet weak var sImage: UIImageView!
    @IBOutlet weak var sLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
            
    }
    
    
}
