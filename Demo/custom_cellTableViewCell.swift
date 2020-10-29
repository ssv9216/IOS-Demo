//
//  custom_cellTableViewCell.swift
//  Demo
//
//  Created by Sohan on 28/10/20.
//  Copyright © 2020 Sohan. All rights reserved.
//

import UIKit

class custom_cellTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBOutlet weak var img_view: UIImageView!
    @IBOutlet weak var lab: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
