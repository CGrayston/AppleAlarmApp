//
//  StopwatchViewController.swift
//  AppleAlarmApp
//
//  Created by Deniz Tutuncu on 3/7/19.
//  Copyright © 2019 Chris Grayston. All rights reserved.
//

import UIKit

class StopwatchViewController: UIViewController {
    
    @IBOutlet weak var pageController: UIPageControl!
    static let pageSwipedNotification = Notification.Name(rawValue: "pageSwiped")
    static let pageIndexKey = "pageIndex"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(forName: StopwatchViewController.pageSwipedNotification, object: nil, queue: .main) { (notification) in
            guard let userInfo = notification.userInfo,
                let currentPageIndex = userInfo[StopwatchViewController.pageIndexKey] as? Int else { return }
            
            self.pageController.currentPage = currentPageIndex
        }

    }
}
