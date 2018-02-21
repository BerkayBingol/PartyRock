//
//  PartyRock.swift
//  PartyRocK
//
//  Created by Berkay Bingol on 17/02/2018.
//  Copyright © 2018 Berkay Bingol. All rights reserved.
//

import Foundation

class PartyRock {
    
    private var _imageUrl: String!
    private var _videoUrl: String!
    private var _videoTitle: String!
    
    var imageUrl: String{
        return _imageUrl
    }
    var videoUrl: String {
        return _videoUrl
    }
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imagUrl: String, videoUrl: String, videoTitle: String) {
        _imageUrl = imagUrl
        _videoUrl = videoUrl
        _videoTitle = videoTitle
    }
    
}
