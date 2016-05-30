//
//  ViewController.swift
//  Animations
//
//  Created by Fabian Vergara on 2016-05-28.
//  Copyright © 2016 fvergara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var alienImage: UIImageView!
    
    @IBAction func updateOurAlienButtonListener(sender: AnyObject) {
        self.alienImage.image = UIImage(named: "frame2.png")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

