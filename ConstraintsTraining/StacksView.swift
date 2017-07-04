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
    
    var regularConstraints = [NSLayoutConstraint]()
    var compactConstraints = [NSLayoutConstraint]()
    
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        
        
        createConstraints()
        regular()
    }
    
       class func labelStackCreate() -> UIStackView {
        var labelArray = [UILabel]()
        
        let firstLabel = UILabel()
        firstLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        firstLabel.text = "1st circle"
        firstLabel.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        firstLabel.textColor = UIColor.white
        firstLabel.invalidateIntrinsicContentSize()
        let secondLabel = UILabel()
        secondLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        secondLabel.text = "2nd circle"
        secondLabel.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        secondLabel.textColor = UIColor.white
        let thirdLabel = UILabel()
        thirdLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        thirdLabel.text = "3rd circle"
        thirdLabel.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        thirdLabel.textColor = UIColor.white
        
        labelArray.append(firstLabel)
        labelArray.append(secondLabel)
        labelArray.append(thirdLabel)
        
        let labelStack = UIStackView(arrangedSubviews: labelArray)
        labelStack.translatesAutoresizingMaskIntoConstraints = false
        //labelStack.axis = .vertical
        //labelStack.spacing = 34.0
        labelStack.alignment = .center
        labelStack.distribution = .fillEqually
        return labelStack
    }
    
    class func switchStackCreate() -> UIStackView {
        var switchArray = [UISwitch]()
        
        let firstSwitch = UISwitch()
        firstSwitch.isOn = true
        firstSwitch.onTintColor = UIColor.black
        let secondSwitch = UISwitch()
        secondSwitch.isOn = false
        secondSwitch.onTintColor = UIColor.black
        let thirdSwitch = UISwitch()
        thirdSwitch.isOn = true
        thirdSwitch.onTintColor = UIColor.black
        
        switchArray.append(firstSwitch)
        switchArray.append(secondSwitch)
        switchArray.append(thirdSwitch)
        
        let switchStack = UIStackView(arrangedSubviews: switchArray)
        switchStack.translatesAutoresizingMaskIntoConstraints = false
        //switchStack.axis = .vertical
        switchStack.alignment = .center
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
        
        let labelTop = labelStack.topAnchor.constraint(equalTo: topAnchor, constant: +0)
        let labelLeading = labelStack.leadingAnchor.constraint(equalTo: leadingAnchor)
        
        let switchBottom = switchStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: +0)
        
        
        NSLayoutConstraint.activate([
            labelTop, labelLeading,
            switchBottom
            ])
    }
    
    
    
    func regular() {
        labelStack.axis = .vertical
        switchStack.axis = .vertical
        labelStack.spacing = 34.0
        
        /*
        let labelBottom = labelStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: +20)
        let labelWidth = labelStack.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.45)
        let switchTop = switchStack.topAnchor.constraint(equalTo: topAnchor, constant: +20)
        let switchWidth = switchStack.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.45)
        
        NSLayoutConstraint.activate([
            labelBottom, labelWidth,
            switchTop, switchWidth
            ])
         */
        
        regularConstraints.append(labelStack.bottomAnchor.constraint(equalTo: bottomAnchor))
        regularConstraints.append(labelStack.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.45))
        regularConstraints.append(switchStack.topAnchor.constraint(equalTo: topAnchor))
        regularConstraints.append(switchStack.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.45))
        regularConstraints.append(switchStack.trailingAnchor.constraint(equalTo: trailingAnchor))
        
        NSLayoutConstraint.deactivate(compactConstraints)
        NSLayoutConstraint.activate(regularConstraints)
    }
    
    func compact() {
        
        labelStack.axis = .horizontal
        switchStack.axis = .horizontal
        labelStack.spacing = 8.0
        /*
        let labelBottom = labelStack.bottomAnchor.constraint(equalTo: switchStack.topAnchor, constant: +20)
        let labelWidth = labelStack.widthAnchor.constraint(equalTo: widthAnchor)
        let switchTop = switchStack.topAnchor.constraint(equalTo: labelStack.bottomAnchor, constant: +20)
        let switchWidth = switchStack.widthAnchor.constraint(equalTo: widthAnchor)
        NSLayoutConstraint.activate([
            labelBottom, labelWidth,
            switchTop, switchWidth
            ])
        */
        
        compactConstraints.append(labelStack.bottomAnchor.constraint(equalTo: switchStack.topAnchor))
        compactConstraints.append(labelStack.widthAnchor.constraint(equalTo: widthAnchor))
        compactConstraints.append(switchStack.topAnchor.constraint(equalTo: labelStack.bottomAnchor, constant: +20))
        let switchDifConst = switchStack.frame.width - (switchStack.frame.width * 0.2)
        compactConstraints.append(switchStack.widthAnchor.constraint(equalTo: widthAnchor, constant: -switchDifConst))
        compactConstraints.append(switchStack.centerXAnchor.constraint(equalTo: centerXAnchor))
        
        NSLayoutConstraint.deactivate(regularConstraints)
        NSLayoutConstraint.activate(compactConstraints)
    }
    
    
    
    

}
