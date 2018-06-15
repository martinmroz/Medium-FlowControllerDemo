//
//  DetailViewController.swift
//  FlowControllerDemo
//
//  Created by Martin Mroz on 6/15/18.
//  Copyright © 2018 Martin Mroz. All rights reserved.
//

import Foundation
import UIKit

public protocol DetailViewControllerDelegate: class {
    
    /// Present the detail view controller.
    func detailViewControllerDismiss(_ viewController: DetailViewController)
    
}

public final class DetailViewController: UIViewController {
    
    // MARK: - Public Properties
    
    public weak var delegate: DetailViewControllerDelegate? = nil
    
    // MARK: - Initialization
    
    public convenience init(delegate: DetailViewControllerDelegate) {
        self.init()
        self.delegate = delegate
    }
    
    // MARK: - IBActions
    
    @IBAction func dismiss() {
        self.delegate?.detailViewControllerDismiss(self)
    }
    
}
