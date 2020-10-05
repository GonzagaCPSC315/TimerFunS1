//
//  ViewController.swift
//  TimerFunS1
//
//  Created by Gina Sprint on 10/5/20.
//  Copyright © 2020 Gina Sprint. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var secondsLabel: UILabel!
    
    // MARK: - Timer
    // use a Timer to execute code later... perhaps periodically (after some time has passed)
    // 2 types of Timers
    // 1. non-repeating
    // 2. repeating
    // call invalidate() to stop a repeating timer
    var timer: Timer? = nil
    // task: add a seconds property (Int) with a property observer to update the secondsLabel
    // task: invalidate and set timer to nil
    // on pause and reset (something else)
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            print("tick")
            //seconds += 1
            
        })
    }
    
    @IBAction func startPressed(_ sender: UIButton) {
        print("hello from start")
        startTimer()
    }
    
    @IBAction func pausePressed(_ sender: UIButton) {
        print("hello from pause")
    }
    
    @IBAction func resetPressed(_ sender: UIButton) {
        print("hello from reset")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

