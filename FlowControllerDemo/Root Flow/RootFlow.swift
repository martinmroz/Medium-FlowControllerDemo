//
//  RootFlow.swift
//  FlowControllerDemo
//
//  Created by Martin Mroz on 6/15/18.
//  Copyright © 2018 Martin Mroz. All rights reserved.
//

import Foundation
import UIKit

public final class RootFlow {
    
    // MARK: - Private Properties
    
    private let navigationController: UINavigationController
    private var presented: Bool = false
    
    // MARK: - Private Properties - View Controllers
    
    private lazy var masterViewController = MasterViewController(delegate: self)
    private lazy var detailViewController = DetailViewController(delegate: self)
    
    // MARK: - Initialization
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: - Public Methods
    
    public func present(animated: Bool = false) {
        precondition(self.presented == false)
        self.navigationController.interactivePopGestureRecognizer?.isEnabled = false
        self.navigationController.isNavigationBarHidden = true
        self.navigationController.pushViewController(self.masterViewController, animated: animated)
        self.presented = true
    }
    
}

// MARK: - MasterViewControllerDelegate

extension RootFlow: MasterViewControllerDelegate {
    public func masterViewControllerShowDetails(_ viewController: MasterViewController) {
        self.navigationController.pushViewController(self.detailViewController, animated: true)
    }
}

// MARK: - DetailViewControllerDelegate

extension RootFlow: DetailViewControllerDelegate {
    public func detailViewControllerDismiss(_ viewController: DetailViewController) {
        self.navigationController.popViewController(animated: true)
    }
}
