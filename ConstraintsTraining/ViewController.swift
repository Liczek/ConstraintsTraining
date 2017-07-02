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
    
    


}

