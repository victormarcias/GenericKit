//
//  CenteredErrorView.swift
//  GenericKit
//
//  Created by Victor Marcias on 2019-04-23.
//  Copyright © 2019 Victor Marcias. All rights reserved.
//

import UIKit

public class CenteredErrorview: BaseView, ErrorView {
    
    private let errorLabel = UILabel()
    
    override func setup() {
        addSubview(errorLabel)
        errorLabel.numberOfLines = 0
        errorLabel.textAlignment = .center
        errorLabel.snap.edges(inset: 15)
    }
    
    public func hide() {
        removeFromSuperview()
    }
    
    public func show(_ type: ErrorType, on parent: UIView) {
        switch type {
        case .empty:
            errorLabel.text = NSLocalizedString("No elements to show.", comment: "")
        case .unknown:
            errorLabel.text = NSLocalizedString("Oops, something went wrong.", comment: "")
        }
        
        frame = parent.bounds
        parent.addSubview(self)
    }
}