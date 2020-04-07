//
//  FlickrViewCell.swift
//  VirtualTourist
//
//   Created by Oladipupo Oluwatobi on 04/07/2020.
//  Copyright © 2020 Oladipupo Oluwatobi. All rights reserved.
//

import UIKit

class FlickrViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photoImage: UIImageView!
    
    func setupCell(url: URL) {
        let task = URLSession.shared.dataTask(with: url) { (data, _, _) in
            DispatchQueue.main.async {
                if let data = data, let image = UIImage(data: data) {
                    self.photoImage.image = image
                } 
            }
        }
        task.resume()
    }
    
 
}
