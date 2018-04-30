//
//  PKHUDSystemActivityIndicatorView.swift
//  PKHUD
//
//  Created by Philip Kluz on 6/12/15.
//  Copyright (c) 2016 NSExceptional. All rights reserved.
//  Licensed under the MIT license.
//

import UIKit

/// PKHUDSystemActivityIndicatorView provides the system UIActivityIndicatorView as an alternative.
public final class PKHUDSystemActivityIndicatorView: PKHUDSquareBaseView, PKHUDAnimating {

    var isDark: Bool = false
    
    public init(isDark: Bool) {
        self.isDark = isDark
        super.init(frame: PKHUDSquareBaseView.defaultSquareBaseViewFrame)
        commonInit()
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    func commonInit () {
        backgroundColor = UIColor.clear
        alpha = 0.8
        activityIndicatorView.color = self.isDark ? .white : .black
        self.addSubview(activityIndicatorView)
    }

    public override func layoutSubviews() {
        super.layoutSubviews()
        activityIndicatorView.center = self.center
    }

    let activityIndicatorView: UIActivityIndicatorView = {
        let activity = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        activity.color = UIColor.black
        return activity
    }()

    public func startAnimation() {
        activityIndicatorView.startAnimating()
    }
}
