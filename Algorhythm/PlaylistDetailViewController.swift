//
//  PlaylistDetailViewController.swift
//  Algorhythm
//
//  Created by David Ladowitz on 4/9/15.
//  Copyright (c) 2015 David Ladowitz. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {

    @IBOutlet weak var playlistCoverImage: UIImageView!
    @IBOutlet weak var playlistTitle: UILabel!
    @IBOutlet weak var playlistDescription: UILabel!
    
    @IBOutlet weak var playlistArtist0: UILabel!
    @IBOutlet weak var playlistArtist1: UILabel!
    @IBOutlet weak var playlistArtist2: UILabel!
    
    var playlist = Playlist?()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if playlist != nil {
            playlistCoverImage.image = playlist!.largeIcon
            playlistCoverImage.backgroundColor = playlist!.background
            playlistTitle.text       = playlist!.title
            playlistDescription.text = playlist!.description
            playlistArtist0.text     = playlist!.artists[0]
            playlistArtist1.text     = playlist!.artists[1]
            playlistArtist2.text     = playlist!.artists[2]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
