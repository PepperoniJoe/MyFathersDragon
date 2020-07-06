//
//  ModelController.swift
//  FlimFlam
//
//  Created by Marcy Vernon on 10/31/18.
//  Copyright © 2018 Marcy Vernon. All rights reserved.
//

import UIKit

class ModelController: NSObject, UIPageViewControllerDataSource {

    func viewControllerAtIndex(_ index: Int, storyboard: UIStoryboard) -> DataViewController? {
        // Return the data view controller for the given index.
        if (K.pageData.count == 0) || (index >= K.pageData.count - 1) {
            return nil
        }
        
        // Create a new view controller and pass suitable data.
        let dataViewController = storyboard.instantiateViewController(withIdentifier: "DataViewController") as! DataViewController
        dataViewController.dataObject.topText   = K.pageData[index].topText
        dataViewController.dataObject.pageImage = K.pageData[index].pageImage
        dataViewController.dataObject.text      = K.pageData[index].text
        dataViewController.dataObject.style     = K.pageData[index].style
        return dataViewController
    }

    
    func indexOfViewController(_ viewController: DataViewController) -> Int {
        // Return the index of the given data view controller.
        let data = viewController.dataObject
        let page: PageContent = (data.pageImage, data.topText, data.text, data.style)
        
        var pageIndex = 0
        
        if let index = K.pageData.firstIndex(where: { $0 == page }) {
            pageIndex = index
        } else {
            pageIndex = NSNotFound
        }
        
        return pageIndex
    }
    

  // MARK: - Page View Controller Data Source

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = Int()
    
        if let vc = viewController as? DataViewController {
            index = indexOfViewController(vc)
            if (index == 0) || (index == NSNotFound) {
                return nil
            }
            
            index -= 1
            
            let storyboard = viewController.storyboard ?? UIStoryboard()
            return viewControllerAtIndex(index, storyboard: storyboard)
        }
        return nil
    }

    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var index = indexOfViewController(viewController as! DataViewController)
        if index == NSNotFound {
            return nil
        }
        
        index += 1
        if index == K.pageData.count {
            return nil
        }
        
        let storyboard = viewController.storyboard ?? UIStoryboard()
        return viewControllerAtIndex(index, storyboard: storyboard)
    }
}


