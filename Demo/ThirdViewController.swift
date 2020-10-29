//
//  ThirdViewController.swift
//  Demo
//
//  Created by Sohan on 27/10/20.
//  Copyright © 2020 Sohan. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ThirdViewController: UIViewController {

    let avPlayerViewController = AVPlayerViewController()
    var avPlayer: AVPlayer?
    
    @IBOutlet weak var playVideo: UIButton!
    
    @IBOutlet weak var thumbnailImage: UIImageView!
    
    var movieurl = "http://techslides.com/demos/sample-videos/small.mp4"
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let movieUrl: NSURL? = NSURL(string: "http://techslides.com/demos/sample-videos/small.mp4")
//        if let url = movieUrl{
//            self.avPlayer = AVPlayer(url: url as URL)
//            self.avPlayerViewController.player = self.avPlayer
//        }
        
        thumbnailImage.layer.cornerRadius = 30
        thumbnailImage.layer.masksToBounds = true
        thumbnailImage.contentMode = .scaleToFill
        
        
        let url = URL(string: movieurl)
        
        self.avPlayer = AVPlayer(url: url!)
        self.avPlayerViewController.player = self.avPlayer
        
        self.getThumbnailFromUrl(url: url!) { (thumbImage) in
            self.thumbnailImage.image = thumbImage
        }
        
    }
    

    
    @IBAction func playVideoBtn(_ sender: Any) {
        self.present(self.avPlayerViewController, animated: true){() -> Void in
            self.avPlayerViewController.player?.play()
        }
    }
    
    func getThumbnailFromUrl(url: URL, completion: @escaping((_ image: UIImage)-> Void)){
        
        ///background gloabal thread
        DispatchQueue.global().async {
    
            let asset = AVAsset(url: url)
            let avAssetImageGenerator = AVAssetImageGenerator(asset: asset)
            
            let thumbnailTime = CMTimeMake(value: 7, timescale: 1)
            
            do{
                let cgThumbImage = try  avAssetImageGenerator.copyCGImage(at: thumbnailTime, actualTime: nil)
                let thumbImage = UIImage(cgImage: cgThumbImage)
                
                //main thread
                DispatchQueue.main.async {
                    completion(thumbImage)
                }
            }catch{
                print(error.localizedDescription)
            }
        }
        
    }
    
}
