//
//  ViewController.swift
//  FlowControllerDemo
//
//  Created by Martin Mroz on 6/15/18.
//  Copyright © 2018 Martin Mroz. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UINavigationController {
    
    // MARK: - Private Properties
    
    private lazy var rootFlow = RootFlow(navigationController: self)
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.rootFlow.present(animated: false)
    }

}
