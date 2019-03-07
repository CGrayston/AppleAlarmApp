//
//  ChildStopwatch2ViewController.swift
//  AppleAlarmApp
//
//  Created by Deniz Tutuncu on 3/7/19.
//  Copyright © 2019 Chris Grayston. All rights reserved.
//

import UIKit

class ChildStopwatch2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.post(name: StopwatchViewController.pageSwipedNotification, object: nil, userInfo: [StopwatchViewController.pageIndexKey : 0])
    }

}
