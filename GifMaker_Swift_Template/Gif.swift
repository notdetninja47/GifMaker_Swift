//
//  Gif.swift
//  GifMaker_Swift
//
//  Created by Daniel on 12.10.16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation
import UIKit

class Gif {
    var url: NSURL
    var caption: String?
    var gifImage: UIImage?
    var videoUrl: NSURL
    var gifData: NSData?
    
    init(withGifUrl url: NSURL, videoUrl: NSURL, caption: String?) {
        self.url = url
        self.videoUrl = videoUrl
        self.caption = caption
        self.gifImage = UIImage.gifWithURL(url.absoluteString!)
        self.gifData = nil
    }
//    init(withName name:String) {
//        self.gifImage = UIImage.gifWithName(name)
//    }
}
