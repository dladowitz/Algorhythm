//
//  Playlist.swift
//  Algorhythm
//
//  Created by David Ladowitz on 4/10/15.
//  Copyright (c) 2015 David Ladowitz. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {
    var title: String?
    var description: String?
    var icon: UIImage?
    var largeIcon: UIImage?
    var artists: [String] = []
    var background: UIColor = UIColor.clearColor()
    
    init(index: Int){
        let musicLibrary = MusicLibrary().library
        let playlistDictionary = musicLibrary[index]
        title       = playlistDictionary["title"] as! String!
        description = playlistDictionary["description"] as! String!
        
        let  iconName = playlistDictionary["icon"] as! String!
        icon = UIImage(named: iconName)
        
        let largeIconName = playlistDictionary["largeIcon"] as! String!
        largeIcon = UIImage(named: largeIconName)
        
        artists += playlistDictionary["artists"] as! [String]
        
        let colorDictionary = playlistDictionary["backgroundColor"] as! [String: CGFloat]
        background = rgbColorFromDictionary(colorDictionary)
    }
    
    func rgbColorFromDictionary(colorDictionary: [String: CGFloat]) -> UIColor {
        let red = colorDictionary["red"]!
        let green = colorDictionary["green"]!
        let blue = colorDictionary["blue"]!
        let alpha = colorDictionary["alpha"]!
        
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
    
}