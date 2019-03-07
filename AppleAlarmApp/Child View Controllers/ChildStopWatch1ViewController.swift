//
//  ChildStopWatch1ViewController.swift
//  AppleAlarmApp
//
//  Created by Deniz Tutuncu on 3/7/19.
//  Copyright © 2019 Chris Grayston. All rights reserved.
//

import UIKit

class ChildStopWatch1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.post(name: StopwatchViewController.pageSwipedNotification, object: nil, userInfo: [StopwatchViewController.pageIndexKey : 1])
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        //remove the notification
        NotificationCenter.default.removeObserver(self, name: StopwatchViewController.pageSwipedNotification, object: nil)
    }
}
