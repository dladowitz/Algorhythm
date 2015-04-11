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
}