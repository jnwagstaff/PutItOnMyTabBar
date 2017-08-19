//
//  ViewController.swift
//  PutItOnMyTabBar
//
//  Created by jnwagstaff on 08/18/2017.
//  Copyright (c) 2017 jnwagstaff. All rights reserved.
//

import UIKit
import PutItOnMyTabBar

class NormalTabBarController : PutItOnMyTabBarController {
    
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
        return .white
    }
    
    override func sliderColor() -> UIColor {
        return .black
    }
    
    override func sliderHeightMultiplier() -> CGFloat {
        return 0.1
    }
    
    override func sliderWidthMultiplier() -> CGFloat {
        return 0.1
    }
    
}

