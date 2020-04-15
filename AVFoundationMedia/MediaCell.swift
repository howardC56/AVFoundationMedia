//
//  MediaCell.swift
//  AVFoundationMedia
//
//  Created by Howard Chang on 4/13/20.
//  Copyright © 2020 Howard Chang. All rights reserved.
//

import UIKit

class MediaCell: UICollectionViewCell {
    @IBOutlet weak var mediaImageView: UIImageView!
    
    public func configureCell(for mediaObject: CDMediaObject) {
        if let imageData = mediaObject.imageData {
            mediaImageView.image = UIImage(data: imageData)
        }
        if let videoData = mediaObject.videoData?.convertToURL() {
            let image = videoData.videoPreviewThumbnail() ?? UIImage(systemName: "heart")
            mediaImageView.image = image
        }
    }
}
