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
    
    let maxValue = 5
    var counter:Int = 1
    
    @IBAction func updateOurAlienButtonListener(sender: AnyObject) {
        if (counterReachedMaxVal()){
            counter = 0
        }
        
        counter += 1
        
        self.alienImage.image = UIImage(named: "frame" + String(counter) + ".png")
        
    }
     
    private func counterReachedMaxVal() -> Bool{
        return counter == maxValue
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

