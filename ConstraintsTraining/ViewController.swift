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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewsFrames()
        setupViewsColors()
        setupViewsDataAndOptions()
        loadPreparedViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupViewsFrames() {
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        
        bgd.frame = CGRect(x: 0, y: 20, width: screenWidth, height: (screenHeight * 0.34) - 20)
        stacks.frame = CGRect(x: 0, y: 20, width: screenWidth, height: (screenHeight * 0.34) - 20)
        circles.frame = CGRect(x: 0, y: screenHeight * 0.34, width: screenWidth, height: screenHeight * 0.33)
        appText.frame = CGRect(x: 0, y: screenHeight * (1 - 0.33), width: screenWidth, height: (screenHeight * 0.33) - 20)
        
    }
    
    func setupViewsColors() {
        bgd.backgroundColor = UIColor.darkGray
        stacks.backgroundColor = UIColor.clear
        circles.backgroundColor = UIColor.gray
        appText.backgroundColor = UIColor.white
    }
    
    func loadPreparedViews() {
        self.view.addSubview(bgd)
        self.view.addSubview(stacks)
        self.view.addSubview(circles)
        self.view.addSubview(appText)
    }
    
    func setupViewsDataAndOptions() {
        bgd.image = UIImage(named: "background")
        bgd.contentMode = .scaleAspectFill
    }


}

