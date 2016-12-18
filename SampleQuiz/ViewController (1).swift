//
//  ViewController.swift
//  SampleQuiz
//
//  Created by inagaki on 2016/08/13.
//  Copyright © 2016年 inagaki. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapSystemSound(sender: AnyObject) {
        // システムサウンド1000番 + バイブ
        AudioServicesPlaySystemSoundWithCompletion(1000) { () -> Void in
            // サウンドが鳴り終わった後の処理
            // ...
        }
    }

}

