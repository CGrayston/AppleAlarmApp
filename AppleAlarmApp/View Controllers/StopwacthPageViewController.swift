//
//  StopwacthPageViewController.swift
//  AppleAlarmApp
//
//  Created by Deniz Tutuncu on 3/7/19.
//  Copyright © 2019 Chris Grayston. All rights reserved.
//

import UIKit

class StopwacthPageViewController: UIPageViewController {
    
    let allViewControllers = [
        UIStoryboard(name: "Stopwatch", bundle: nil).instantiateViewController(withIdentifier: "First"),
        UIStoryboard(name: "Stopwatch", bundle: nil).instantiateViewController(withIdentifier: "Second")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        delegate = self
        
        setViewControllers([allViewControllers.first!], direction: .forward, animated: true, completion: nil)
    }
}

extension StopwacthPageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        //Finde the index of the current view controller
        guard let index = allViewControllers.firstIndex(of: viewController) else { return UIViewController() }
        
        //if we are in the first view controller, return nil because there are no view controllers before it.
        if index == 0 {
            return nil
        }
        
        //get the index of my previous view controller
        let newIndex = index - 1
        
        return allViewControllers[newIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        //Finde the index of the current view controller
        guard let index = allViewControllers.firstIndex(of: viewController) else { return UIViewController() }
        
        //if we are in the first view controller, return nil because there are no view controllers before it.
        if index == allViewControllers.count - 1 {
            return nil
        }
        
        //get the index of my previous view controller
        let newIndex = index + 1
        
        return allViewControllers[newIndex]
    }
}

extension StopwacthPageViewController: UIPageViewControllerDelegate {
    
}



