//
//  FifthViewController.swift
//  Demo
//
//  Created by Sohan on 28/10/20.
//  Copyright © 2020 Sohan. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    var imageArray = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named:"3")]
    var imageNames = [ "⏱⏱⏱⏱", "🛥🐋", "🌻🌻🌻🌻"]
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 200, height: 600)
        collectionView.collectionViewLayout = layout
        
        collectionView.register(FifthCollectionViewCell.nib(), forCellWithReuseIdentifier: FifthCollectionViewCell.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
}

extension FifthViewController: UICollectionViewDelegate{
 
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Tapped item \(indexPath.row)")
    }
}

extension FifthViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FifthCollectionViewCell.identifier, for: indexPath)  as! FifthCollectionViewCell
        
        cell.configureLabelAndImage(label: imageNames[indexPath.row], image: imageArray[indexPath.row]!)
        return cell
    }
    
    
}

extension FifthViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 600)
    }
}

