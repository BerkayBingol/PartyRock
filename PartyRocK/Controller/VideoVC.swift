//
//  VideoVC.swift
//  PartyRocK
//
//  Created by Berkay Bingol on 17/02/2018.
//  Copyright © 2018 Berkay Bingol. All rights reserved.
//
import WebKit
import UIKit
import YouTubePlayer
class VideoVC: UIViewController,UIWebViewDelegate {

    
    @IBOutlet weak var videoView: YouTubePlayerView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get {
            return _partyRock
        }
        set {
            _partyRock = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
        videoView.loadVideoID(partyRock.videoUrl)
        titleLbl.text = partyRock.videoTitle
        
    


      
        

    }
  
    
    

   

}
