//
//  MediaObject.swift
//  AVFoundationMedia
//
//  Created by Howard Chang on 4/13/20.
//  Copyright © 2020 Howard Chang. All rights reserved.
//

import Foundation

struct MediaObject {
    let imageData: Data?
    let videoURL: URL?
    let caption: String?
    let id = UUID().uuidString
    let createDate = Date()
}
