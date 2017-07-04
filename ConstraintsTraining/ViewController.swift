//
//  ViewController.swift
//  ConstraintsTraining
//
//  Created by Paweł Liczmański on 01.07.2017.
//  Copyright © 2017 Paweł Liczmański. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Views
    let bgd = UIImageView()
    let stacks = StacksView()
    let circles = CirclesView()
    let appText = UITextView()
    
    var regularConstraints = [NSLayoutConstraint]()
    var compactConstraints = [NSLayoutConstraint]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        setupViewsColors()
        setupViewsDataAndOptions()
        
        //setupViewsFrames()
        setupViewsConstraints()
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        if traitCollection.horizontalSizeClass == .compact {
            NSLayoutConstraint.deactivate(compactConstraints)
            NSLayoutConstraint.activate(regularConstraints)
            changingViewsForRegularTrait()
            stacks.regular()
        } else {
            NSLayoutConstraint.deactivate(regularConstraints)
            NSLayoutConstraint.activate(compactConstraints)
            changingViewsForCompactTrait()
            stacks.compact()
        }
    }
    
    func setupViewsConstraints() {
        
        bgd.translatesAutoresizingMaskIntoConstraints = false
        let bgdTop = bgd.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor)
        let bgdLeading = bgd.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor)
        let bgdTrailing = bgd.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        
        stacks.translatesAutoresizingMaskIntoConstraints = false
        let stacksTop = stacks.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor)
        let stacksLeading = stacks.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor)
        let stacksHeight = stacks.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.34)
        let stacksTrailing = stacks.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        
        circles.translatesAutoresizingMaskIntoConstraints = false
        let circlesTop = circles.topAnchor.constraint(equalTo: stacks.bottomAnchor)
        let circlesLeading = circles.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor)
        
        appText.translatesAutoresizingMaskIntoConstraints = false
        let appTextBottom  = appText.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor, constant: -10)
        
        NSLayoutConstraint.activate([
            bgdTop, bgdLeading, bgdTrailing,
            stacksTop, stacksHeight, stacksLeading, stacksTrailing,
            circlesTop, circlesLeading,
            appTextBottom
            ])
        
        
        regularConstraints.append(bgd.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.34))
        regularConstraints.append(circles.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor))
        regularConstraints.append(circles.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.33))
        regularConstraints.append(appText.topAnchor.constraint(equalTo: circles.bottomAnchor))
        regularConstraints.append(appText.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor))
        regularConstraints.append(appText.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor))
        
        
        compactConstraints.append(bgd.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor, constant: -10))
        compactConstraints.append(circles.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor))
        compactConstraints.append(circles.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor, constant: -10))
        compactConstraints.append(appText.leadingAnchor.constraint(equalTo: circles.trailingAnchor))
        compactConstraints.append(appText.topAnchor.constraint(equalTo: stacks.bottomAnchor))
        compactConstraints.append(appText.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor))

    }


}

