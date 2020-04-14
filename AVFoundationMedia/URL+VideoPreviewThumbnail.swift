//
//  URL+VideoPreviewThumbnail.swift
//  AVFoundationMedia
//
//  Created by Howard Chang on 4/13/20.
//  Copyright © 2020 Howard Chang. All rights reserved.
//

import UIKit
import AVFoundation

extension URL {
    public func videoPreviewThumbnail() -> UIImage? {
        let asset = AVAsset(url: self)
        let assetGenerator = AVAssetImageGenerator(asset: asset)
        //maintain aspect ratio of the video
        assetGenerator.appliesPreferredTrackTransform = true
        //first second of the video
        let timestamp = CMTime(seconds: 1, preferredTimescale: 60)
        var image: UIImage?
        do {
            let cgImage = try assetGenerator.copyCGImage(at: timestamp, actualTime: nil)
            image = UIImage(cgImage: cgImage)
        } catch {
            print("failed to get image from video")
        }
        return image
    }
}
