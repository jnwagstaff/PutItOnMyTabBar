//
//  RecordView.swift
//  BugClub
//
//  Created by Jacob Wagstaff on 8/17/17.
//  Copyright © 2017 Jacob Wagstaff. All rights reserved.
//

import UIKit

class RecordView: UIView {
    
    // MARK: - Properties
    
    // MARK: - Subviews
    
    
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
        backgroundColor = .brown 
    }
    
    /// Add subviews, set layoutMargins, initialize stored constraints, set layout priorities, activate constraints
    fileprivate func configureLayout() {
        
        // Activate NSLayoutAnchors within this closure
        NSLayoutConstraint.activate([
            
            ])
    }
}

