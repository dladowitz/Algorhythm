//
//  ViewController.swift
//  Algorhythm
//
//  Created by David Ladowitz on 4/9/15.
//  Copyright (c) 2015 David Ladowitz. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {
    @IBOutlet weak var aButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        aButton.setTitle("Press Me", forState: .Normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

