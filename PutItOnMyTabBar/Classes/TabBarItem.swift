//
//  JWTabBarItem.swift
//  JW_TabBarController
//
//  Created by Jacob Wagstaff on 8/18/17.
//  Copyright © 2017 Jacob Wagstaff. All rights reserved.
//

import UIKit

class TabBarItem: UIButton {
    
    var containerButton = UIButton()
    var iconView = UIImageView()
    
    convenience init() {
        self.init(frame: .zero)
        configureSubviews()
        configureLayout()
    }
    
    fileprivate func configureSubviews(){
        iconView.contentMode = .center
        iconView.clipsToBounds = true
        
        backgroundColor = .clear
    }
    
    fileprivate func configureLayout(){
        addAutoLayoutSubview(containerButton)
        containerButton.addAutoLayoutSubview(iconView)
        
        iconView.fillSuperview()
        containerButton.fillSuperview()
    }
}

