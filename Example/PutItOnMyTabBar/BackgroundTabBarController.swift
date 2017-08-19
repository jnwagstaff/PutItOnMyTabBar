//
//  BackgroundTabBarController.swift
//  PutItOnMyTabBar
//
//  Created by Jacob Wagstaff on 8/18/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import PutItOnMyTabBar

class BackgroundTabBarController: PutItOnMyTabBarController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Home Tab
        let home = HomeViewController()
        let homeNav = UINavigationController()
        homeNav.viewControllers = [home]
        
        //Excursion Tab
        let excursion = ExcursionViewController()
        let excursionNav = UINavigationController()
        excursionNav.viewControllers = [excursion]
        
        //Record Tab
        let record = RecordViewController()
        let recordNav = UINavigationController()
        recordNav.viewControllers = [record]
        
        //Map Tab
        let map = MapViewController()
        let mapNav = UINavigationController()
        mapNav.viewControllers = [map]
        
        //Tackle Tab
        let tackle = TackleViewController()
        let tackleNav = UINavigationController()
        tackleNav.viewControllers = [tackle]
        
        viewControllers = [homeNav, excursionNav, recordNav, mapNav, tackleNav]
    }
    
    // MARK: Overrides for PutItOnMyTabBar
    override func numberOfTabs() -> Int {
        return 5
    }
    
    override func highLightedImages() -> [UIImage] {
        return [#imageLiteral(resourceName: "homeSelected"), #imageLiteral(resourceName: "excursionSelected"), #imageLiteral(resourceName: "recordSelected"), #imageLiteral(resourceName: "mapSelected"), #imageLiteral(resourceName: "tackleSelected")]
    }
    
    override func unHighlightedImages() -> [UIImage] {
        return [#imageLiteral(resourceName: "home"), #imageLiteral(resourceName: "excursion"), #imageLiteral(resourceName: "record"), #imageLiteral(resourceName: "map"), #imageLiteral(resourceName: "tackle")]
    }
    
    override func backgroundColor() -> UIColor{
        return UIColor.fromHex(rgbValue: 0xF2E9DE, alpha: 0.95)
    }
    
    override func sliderColor() -> UIColor {
        return .white
    }
    
    override func sliderHeightMultiplier() -> CGFloat {
        return 1
    }
    
    override func sliderWidthMultiplier() -> CGFloat {
        return 1
    }
}
