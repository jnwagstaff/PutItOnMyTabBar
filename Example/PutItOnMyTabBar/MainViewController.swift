//
//  MainViewController.swift
//  PutItOnMyTabBar
//
//  Created by Jacob Wagstaff on 8/18/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - View
    let baseView = MainView()
    
    
    // MARK: - Life Cycle
    
    override func loadView() {
        super.loadView()
        
        view = baseView
        setupViewOnLoad()
    }
    
    /// Setup View upon loading ViewController (e.g. add targets to buttons, update labels with data, etc.)
    func setupViewOnLoad() {
        baseView.table.delegate = self
        baseView.table.dataSource = self 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        switch indexPath.row{
        case 0:
            cell.textLabel?.text = "Normal Tab Bar"
        case 1:
            cell.textLabel?.text = "Slider Tab Bar"
        case 2:
            cell.textLabel?.text = "Background Tab Bar"
        default:
            break
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var vc : UITabBarController!
        switch indexPath.row {
        case 0:
            vc = NormalTabBarController()
        case 1:
            vc = SliderTabBarController()
        case 2:
            vc = BackgroundTabBarController()
        default:
            break
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
