//
//  ViewController.swift
//  DigitalTimer03
//
//  Created by D7703_19 on 2018. 4. 10..
//  Copyright © 2018년 s22dfg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var timerSwitch: UISwitch!
    
    var myTimer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in
            //self.updateTime()
        //})
        timerSwitch.setOn(false, animated: true)
    }

    func updateTime() {
        let date = Date();
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss EE"
        timeLabel.text = formatter.string(from: date)
        
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func TiSw(_ sender: Any) {
        if timerSwitch.isOn == true {
            //            myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
            
            // closure 사용
            myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in
                self.updateTime()
            })
            
        } else {
            myTimer.invalidate()
            
        }
    }
}
