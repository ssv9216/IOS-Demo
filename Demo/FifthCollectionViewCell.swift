//
//  FifthCollectionViewCell.swift
//  Demo
//
//  Created by Sohan on 28/10/20.
//  Copyright © 2020 Sohan. All rights reserved.
//

import UIKit

class FifthCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    static let identifier = "FifthCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        // Initialization code
    }
   
    public func configureLabelAndImage(label: String, image: UIImage){
        imageLabel.text = label
        imageView.image = image
    }
    
    static func nib() -> UINib{
        return UINib(nibName: "FifthCollectionViewCell", bundle: nil)
    }
    
}
