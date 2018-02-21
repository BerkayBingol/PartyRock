//
//  PartyCell.swift
//  PartyRocK
//
//  Created by Berkay Bingol on 17/02/2018.
//  Copyright © 2018 Berkay Bingol. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImg: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    func updateUI(partyRock: PartyRock) {
       videoTitle.text = partyRock.videoTitle
        //when you are downloading from internet
        //..
        
        let url = URL(string: partyRock.imageUrl)!
       
            //asyncronus thread. gives us a block of threads for work
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    //update the userface with main thread
                    self.videoPreviewImg.image = UIImage(data: data)
                }
            } catch  {
                //handle the error
            }
            
        
    }
  

}
