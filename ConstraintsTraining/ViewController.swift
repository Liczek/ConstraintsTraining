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
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        setupViewsColors()
        setupViewsDataAndOptions()
        
        //setupViewsFrames()
        setupViewsConstraints()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupViewsConstraints() {
        
        bgd.translatesAutoresizingMaskIntoConstraints = false
        let bgdTop = bgd.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor)
        let bgdLeading = bgd.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor)
        let bgdHeight = bgd.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.34)
        let bgdTrailing = bgd.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        
        stacks.translatesAutoresizingMaskIntoConstraints = false
        let stacksTop = stacks.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor)
        let stacksLeading = stacks.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor)
        let stacksHeight = stacks.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.34)
        let stacksTrailing = stacks.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        
        circles.translatesAutoresizingMaskIntoConstraints = false
        let circlesTop = circles.topAnchor.constraint(equalTo: bgd.bottomAnchor)
        let circlesLeading = circles.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor)
        let circlesTrailing = circles.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        let circlesHeight = circles.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.33)
        
        appText.translatesAutoresizingMaskIntoConstraints = false
        let appTextTop = appText.topAnchor.constraint(equalTo: circles.bottomAnchor)
        let appTextLeading = appText.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor)
        let appTextTrailing = appText.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor)
        let appTextBottom  = appText.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor, constant: -20)
        
        NSLayoutConstraint.activate([
            bgdTop, bgdLeading, bgdHeight, bgdTrailing,
            stacksTop, stacksHeight, stacksLeading, stacksTrailing,
            circlesTop, circlesLeading, circlesTrailing, circlesHeight,
            appTextTop, appTextLeading, appTextTrailing, appTextBottom
            ])

    }


}

