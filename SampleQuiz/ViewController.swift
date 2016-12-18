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

    @IBAction func tapCustomSound(sender: AnyObject) {
        // サウンドID登録用変数
        var soundId :SystemSoundID = 0
        // 指定するサウンドファイルは再生時間が30秒以内である必要がある
        if let soundUrl = NSBundle.mainBundle().URLForResource("button70", withExtension: "mp3") {
            // サウンドファイルに登録してサウンドIDを取得
            AudioServicesCreateSystemSoundID(soundUrl, &soundId)
            // 取得したサウンドIDを使用してサウンドを鳴らす
            NSLog("Sound")
            AudioServicesPlaySystemSoundWithCompletion(soundId, { () -> Void in
                // ここにはサウンドが鳴り終わった後の処理 
                // ...
            })
        }
    }

    @IBAction func tapVibration(sender: AnyObject) {
        // バイブレーションのみを発生させる
        AudioServicesPlaySystemSoundWithCompletion(kSystemSoundID_Vibrate, { () -> Void in
            // バイブレーション後の処理
        })
    }

}

