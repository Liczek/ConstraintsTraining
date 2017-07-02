//
//  CirclesView.swift
//  ConstraintsTraining
//
//  Created by Paweł Liczmański on 01.07.2017.
//  Copyright © 2017 Paweł Liczmański. All rights reserved.
//

import UIKit

class CirclesView: UIView {
    
    var firstCircle = UIImageView()
    var secondCircle = UIImageView()
    
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        
        createCirclesFrame()
    }

    func createCirclesFrame() {
        
        addSubview(firstCircle)
        addSubview(secondCircle)
        
        firstCircle.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
        firstCircle.layer.cornerRadius = firstCircle.frame.width * 0.5
        firstCircle.clipsToBounds = true
        firstCircle.backgroundColor = UIColor.green
        firstCircle.image = UIImage(named: "yoda")
        firstCircle.contentMode = .scaleAspectFit
        secondCircle.frame = CGRect(x: firstCircle.frame.width + 20, y: 10, width: 130, height: 130)
        secondCircle.layer.cornerRadius = secondCircle.frame.width * 0.5
        secondCircle.clipsToBounds = true
        secondCircle.image = UIImage(named: "ania")
        secondCircle.contentMode = .scaleAspectFill
        secondCircle.backgroundColor = UIColor.red
        
    }

}
