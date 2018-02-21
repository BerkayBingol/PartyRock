//
//  ViewController.swift
//  PartyRocK
//
//  Created by Berkay Bingol on 17/02/2018.
//  Copyright © 2018 Berkay Bingol. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        //let urlTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SkTt9k4Y-a8\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"
        let p1 = PartyRock(imagUrl: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoUrl: "ev4bY1SkZLg" , videoTitle: "Lights Out")
        
        
        let p2 = PartyRock(imagUrl: "http://www.croshalgroup.com/wp-content/uploads/2015/05/Redfoo-Website.jpg", videoUrl: "1w9DiGlZksU", videoTitle: "Let's Get Ridiculous")
        
        let p3 = PartyRock(imagUrl: "https://i.ytimg.com/vi/2wUxw6GH3IM/hqdefault.jpg", videoUrl: "vg_nvEGryA4", videoTitle: "Juicy Wiggle Lesson")
        
        let p4 = PartyRock(imagUrl: "http://www.billboard.com/files/styles/article_main_image/public/media/lmfao-party-rock-anthem-2011-billboard-650.jpg", videoUrl: "gZIqW92GaTQ", videoTitle: "Party Rock Commercial")
        let p5 = PartyRock(imagUrl: "http://direct-ns.rhap.com/imageserver/v2/albums/Alb.219913217/images/600x600.jpg", videoUrl: "tWyuglGCKgE", videoTitle: "Juicy Wiggle")
        
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:
        IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
            
        } else {
            return UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? PartyRock {
                destination.partyRock = party
            }

        }
        
        
    }
   

}

