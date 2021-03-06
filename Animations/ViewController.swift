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
    
//    let OFFSET: CGPoint = 400
    let MAX_VALUE = 5
    var counter:Int = 1
    var timer = NSTimer()
    var isPlaying = true
    
    @IBOutlet var playButton: UIButton!
    
    @IBAction func updateOurAlienButtonListener(sender: AnyObject) {
        if (isPlaying){
        //    self.playButton.titleLabel!.text = "Stop animation"
            self.isPlaying = false
            self.timer.invalidate()
        }else{
        //    self.playButton.titleLabel!.text = "Stop animation"
            self.isPlaying = true
            timer = NSTimer.scheduledTimerWithTimeInterval(0.2, target: self, selector: #selector(ViewController.doAnimation), userInfo: nil, repeats: true)
        }
        
    }
     
    private func counterReachedMaxVal() -> Bool{
        return counter == MAX_VALUE
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.2, target: self, selector: #selector(ViewController.doAnimation), userInfo: nil, repeats: true)
    }

    func doAnimation(){
        if (counterReachedMaxVal()){
            counter = 0
        }
        
        counter += 1
        
        self.alienImage.image = UIImage(named: "frame" + String(counter) + ".png")

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  /*  override func viewDidLayoutSubviews() {
        
        self.alienImage.frame = CGRectMake(100, 20, 0, 0)
       // self.alienImage.alpha = 0
       // self.alienImage.center = CGPoint(x: self.alienImage.center.x - 400, y: self.alienImage.center.y)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1) {
            //Changing object size animation (Zoom)
             self.alienImage.frame = CGRectMake(100, 20, 100, 200)
            
            //Fade animation
           // self.alienImage.alpha = 1
           
            //Drag animation
           // self.alienImage.center = CGPoint(x: self.alienImage.center.x + 400, y: self.alienImage.center.y)
        }
 
    }*/


}

