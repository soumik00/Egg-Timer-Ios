//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let eggTime = ["Soft":3,"Medium":4,"Hard":7]
    var result = 60;
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLable: UILabel!
    var timer = Timer()
    @IBAction func hardnessSelected(_ sender: UIButton) {
        progressBar.progress = 1.0
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        result = eggTime[hardness]!
      timer =   Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        

//        print(result);
    }
    
    
   @objc func updateTimer(){
       if result > 0 {
            print("\(result) seconds")
           result -= 1
       }
       else{
           timer.invalidate()
           titleLable.text = "Done 🥘"
       }
    }

}
