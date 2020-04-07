//
//  FlickrPhoto.swift
//  VirtualTourist
//
//   Created by Oladipupo Oluwatobi on 04/06/2020.
//  Copyright © 2020 Oladipupo Oluwatobi. All rights reserved.
//

import Foundation


struct JsonFlickrApi: Codable {
    let photos: FlickrPhotoResponse
}

struct FlickrPhotoResponse: Codable {
    let photo: [FlickrPhoto]
}

struct FlickrPhoto: Codable {
    let id: String
    let secret: String
    let server: String
    let farm: Int
 
    func imageURLString() -> String {
        
        return "https://farm\(farm).staticflickr.com/\(server)/\(id)_\(secret)_q.jpg"
    }
    
}
