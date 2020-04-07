//
//  NetworkingError.swift
//  VirtualTourist
//
//   Created by Oladipupo Oluwatobi on 04/05/2020.
//  Copyright © 2020 Oladipupo Oluwatobi. All rights reserved.
//

import Foundation

enum NetworkingError: Error {
    case invalidURLComponents
    case invalidURL
    case nilData
    case httpError
}
