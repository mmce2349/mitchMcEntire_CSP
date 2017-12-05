//
//  abstractionController.swift
//  mitchMcEntire_CSP
//
//  Created by Mcentire, Mitchell on 10/26/17.
//  Copyright © 2017 Mcentire, Mitchell. All rights reserved.
//

import UIKit

class abstractionController: UIViewController, UIPageViewControllerDataSource
{
        
        //MARK: Array of subviews
        private (set) lazy var orderedAbstractionViews : [UIViewController] =
        {
            return [
                self.newAbstractionViewController(abstractionLevel: "Block"),
                self.newAbstractionViewController(abstractionLevel: "Java"),
                self.newAbstractionViewController(abstractionLevel: "ByteCode"),
                self.newAbstractionViewController(abstractionLevel: "Binary"),
                self.newAbstractionViewController(abstractionLevel: "AndGate")
            ]
        }()
        
        //Helper method to retrieve the correct ViewController
        private func newAbstractionViewController(abstractionLevel : String) -> UIViewController
        {
            return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\(abstractionLevel)ViewController")
        }
        
        override func viewDidLoad()
        {
            super.viewDidLoad()
            dataSource = self
            
            if let viewController = orderedAbstractionViews.first
            {
                setViewControllers([ViewController],
                                direction: .forward,
                                   animated: true,
                                   completion: nil)
            }
        }
        
        //MARK:- Required protocol methods for UIPageViewControllerDataSource
        public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
        {
            guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
                else
            {
                return nil
            }
            
            let previousIndex = viewControllerIndex - 1
            
            guard previousIndex >= 0
                else
            {
                return orderedAbstractionViews.last
            }
            
            guard orderedAbstractionViews.count > previousIndex
                else
            {
                return nil
            }
            
            return orderedAbstractionViews[previousIndex]
        }
        
        public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
        {
            guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
                else
            {
                return nil
            }
            
            let nextIndex = viewControllerIndex + 1
            
            guard nextIndex >= 0
                else
            {
                return nil
            }
            
            guard nextIndex < orderedAbstractionViews.count
                else
            {
                return orderedAbstractionViews.first
            }
            
            return orderedAbstractionViews[nextIndex]
        }
        
        //MARK:- Support for dots in the UIPageViewController
        
        public func presentationCount(for pageViewController: UIPageViewController) -> Int
        {
            return orderedAbstractionViews.count
        }
        
        public func presentationIndex(for pageViewController: UIPageViewController) -> Int
        {
            guard let firstViewController = ViewControllers?.first, let viewControllerIndex = orderedAbstractionViews.index(of: ViewController)
                else
            {
                return 0
            }
            
            return viewControllerIndex
        }
        
        override func didReceiveMemoryWarning()
        {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
}
