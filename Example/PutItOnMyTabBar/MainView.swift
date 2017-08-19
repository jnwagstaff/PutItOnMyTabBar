//
//  MainView.swift
//  PutItOnMyTabBar
//
//  Created by Jacob Wagstaff on 8/18/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    // MARK: - Properties
    
    // MARK: - Subviews
    
    var table : UITableView!
    
    
    // MARK: - Stored Constraints
    // (Store any constraints that might need to be changed or animated later)
    
    
    // MARK: - Initialization
    
    convenience init() {
        self.init(frame: .zero)
        configureSubviews()
        configureLayout()
    }
    
    /// Set view/subviews appearances
    fileprivate func configureSubviews() {
        table = UITableView(frame: .zero, style: .plain)
    }
    
    /// Add subviews, set layoutMargins, initialize stored constraints, set layout priorities, activate constraints
    fileprivate func configureLayout() {
        addAutoLayoutSubview(table)
        table.fillSuperview()
    }
}

