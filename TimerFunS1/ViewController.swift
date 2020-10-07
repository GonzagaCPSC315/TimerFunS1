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
    var seconds: Int = 0 {
        didSet {
            secondsLabel.text = "\(seconds)"
        }
    }
    // task: invalidate and set timer to nil
    // on pause and reset (something else)
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            print("tick")
            self.seconds += 1 // fully qualify external refernce names
            // recall: that closures "capture" their external references
            // closures execute LATER
            // perhaps when a variable that they refer to has been deallocated
            // to prevent this issue, the closure "captures" the references and keeps them in memory/scope
        })
    }
    
    func stopTimer() {
        timer?.invalidate() // optional chaining
        timer = nil
    }
    
    @IBAction func startPressed(_ sender: UIButton) {
        print("hello from start")
        if timer == nil {
            startTimer()
        }
    }
    
    @IBAction func pausePressed(_ sender: UIButton) {
        print("hello from pause")
        stopTimer()
    }
    
    @IBAction func resetPressed(_ sender: UIButton) {
        print("hello from reset")
        stopTimer()
        seconds = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

