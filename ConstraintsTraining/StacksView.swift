//
//  StacksView.swift
//  ConstraintsTraining
//
//  Created by Paweł Liczmański on 01.07.2017.
//  Copyright © 2017 Paweł Liczmański. All rights reserved.
//

import UIKit

class StacksView: UIView {

    var labelStack: UIStackView = {
        return StacksView.labelStackCreate()
    }()
    var switchStack: UIStackView = {
        return StacksView.switchStackCreate()
    }()
    
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        
        
        createConstraints()
        
    }
    
       class func labelStackCreate() -> UIStackView {
        var labelArray = [UILabel]()
        
        let firstLabel = UILabel()
        firstLabel.font = UIFont.preferredFont(forTextStyle: .body)
        firstLabel.text = "1st circle"
        firstLabel.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        let secondLabel = UILabel()
        secondLabel.font = UIFont.preferredFont(forTextStyle: .body)
        secondLabel.text = "2nd circle"
        secondLabel.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        let thirdLabel = UILabel()
        thirdLabel.font = UIFont.preferredFont(forTextStyle: .body)
        thirdLabel.text = "3rd circle"
        thirdLabel.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        
        labelArray.append(firstLabel)
        labelArray.append(secondLabel)
        labelArray.append(thirdLabel)
        
        let labelStack = UIStackView(arrangedSubviews: labelArray)
        labelStack.translatesAutoresizingMaskIntoConstraints = false
        labelStack.axis = .vertical
        labelStack.spacing = 12.0
        labelStack.alignment = .center
        labelStack.distribution = .fillEqually
        return labelStack
    }
    
    class func switchStackCreate() -> UIStackView {
        var switchArray = [UISwitch]()
        
        let firstSwitch = UISwitch()
        firstSwitch.isOn = true
        let secondSwitch = UISwitch()
        secondSwitch.isOn = false
        let thirdSwitch = UISwitch()
        thirdSwitch.isOn = true
        
        switchArray.append(firstSwitch)
        switchArray.append(secondSwitch)
        switchArray.append(thirdSwitch)
        
        let switchStack = UIStackView(arrangedSubviews: switchArray)
        switchStack.translatesAutoresizingMaskIntoConstraints = false
        switchStack.axis = .vertical
        switchStack.alignment = .leading
        switchStack.distribution = .equalSpacing
        switchStack.spacing = 12.0
        
        return switchStack
    }
    
    func addStacksToSuperview() {
        addSubview(labelStack)
        addSubview(switchStack)
    }
    
    func createConstraints() {
        
        addStacksToSuperview()
        
        let labelTop = labelStack.topAnchor.constraint(equalTo: topAnchor)
        let labelLeading = labelStack.leadingAnchor.constraint(equalTo: leadingAnchor)
        let labelBottom = labelStack.bottomAnchor.constraint(equalTo: bottomAnchor)
        let labelWidth = labelStack.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.45)
        
        let switchTop = switchStack.topAnchor.constraint(equalTo: topAnchor)
        let switchTrailing  = switchStack.trailingAnchor.constraint(equalTo: trailingAnchor)
        let switchBottom = switchStack.bottomAnchor.constraint(equalTo: bottomAnchor)
        let switchWidth = switchStack.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.45)
        
        NSLayoutConstraint.activate([
            labelTop, labelLeading, labelBottom, labelWidth,
            switchTop, switchTrailing, switchBottom, switchWidth
            ])
    }
    
    
    
    
    
    
    
    

}
