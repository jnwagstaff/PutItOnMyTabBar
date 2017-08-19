//
//  JWTabBarController.swift
//  JW_TabBarController
//
//  Created by Jacob Wagstaff on 8/18/17.
//  Copyright © 2017 Jacob Wagstaff. All rights reserved.
//

import UIKit

class PutItOnMyTabBarController: UITabBarController {

    // MARK: - View
    var customTabBar = CustomTabBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutView()
    }
    
    // MARK: - Initial Setup
    func layoutView(){
        view.addAutoLayoutSubview(customTabBar)
        
        NSLayoutConstraint.activate([
            customTabBar.leftAnchor.constraint(equalTo: view.leftAnchor),
            customTabBar.rightAnchor.constraint(equalTo: view.rightAnchor),
            customTabBar.heightAnchor.constraint(equalTo: tabBar.heightAnchor),
            customTabBar.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
       
        customTabBar.delegate = self
        customTabBar.setup()
        customTabBar.highlightSelected(index: 0)
    }
}

extension PutItOnMyTabBarController: CustomTabBarDelegate{

    func didSelectViewController(_ tabBarView: CustomTabBar, atIndex index: Int) {
        let gen = UIImpactFeedbackGenerator(style: .light)
        gen.impactOccurred()
        selectedIndex = index
    }
    
    func numberOfTabBars() -> Int{
        fatalError("subclass must implement numberOfTabBars")
    }
    
    func highLightedImages() -> [UIImage] {
        fatalError("subclass must implement highLightedImages")
    }
    
    func unHighlightedImages() -> [UIImage] {
        fatalError("subclass must implement unHighlightedImages")
    }
    
    func backgroundColor() -> UIColor{
        fatalError("subclass must implement backgroundColor")
    }
    
    // Optional 
    
    func tabBarType() -> TabBarType {
        return .normal
    }
    
    func sliderColor() -> UIColor {
        return .clear
    }
    
    func sliderHeightMultiplier() -> CGFloat {
        return 0.1
    }
    
    func sliderWidthMultiplier() -> CGFloat {
        return 1.0
    }
    
}
