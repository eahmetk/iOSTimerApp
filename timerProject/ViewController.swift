//
//  ViewController.swift
//  timerProject
//
//  Created by Ahmet on 20.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!
    var timer = Timer()
    var counter=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter=10
        timerLabel.text="Time:\(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)

    }
    
    @objc func timerFunction(){
        timerLabel.text="Time:\(counter)"
        counter = counter-1
        if counter == 0 {
            timer.invalidate()
            timerLabel.text="Time's Over"
        }
        
        
    }
    
    @IBAction func buttonClick(_ sender: Any) {
        
    }
    
}
