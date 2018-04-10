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
    var myTimer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in
            self.updateTime()
        })
    }

    func updateTime() {
        let date = Date();
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss EE"
        timeLabel.text = formatter.string(from: date)
        
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

