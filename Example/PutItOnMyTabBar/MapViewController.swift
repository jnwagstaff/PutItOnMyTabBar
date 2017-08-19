//
//  MapViewController.swift
//  BugClub
//
//  Created by Jacob Wagstaff on 8/17/17.
//  Copyright © 2017 Jacob Wagstaff. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - View
    let baseView = MapView()
    
    
    // MARK: - Life Cycle
    
    override func loadView() {
        super.loadView()
        
        view = baseView
        setupViewOnLoad()
    }
    
    /// Setup View upon loading ViewController (e.g. add targets to buttons, update labels with data, etc.)
    func setupViewOnLoad() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
