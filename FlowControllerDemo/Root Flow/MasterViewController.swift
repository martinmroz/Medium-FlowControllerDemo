//
//  MasterViewController.swift
//  FlowControllerDemo
//
//  Created by Martin Mroz on 6/15/18.
//  Copyright © 2018 Martin Mroz. All rights reserved.
//

import Foundation
import UIKit

public protocol MasterViewControllerDelegate: class {
    
    /// Present the detail view controller.
    func masterViewControllerShowDetails(_ viewController: MasterViewController)
    
}

public final class MasterViewController: UIViewController {
    
    // MARK: - Public Properties
    
    public weak var delegate: MasterViewControllerDelegate? = nil
    
    // MARK: - Initialization
    
    public convenience init(delegate: MasterViewControllerDelegate) {
        self.init()
        self.delegate = delegate
    }
    
    // MARK: - IBActions
    
    @IBAction func showDetails() {
        self.delegate?.masterViewControllerShowDetails(self)
    }
    
}

