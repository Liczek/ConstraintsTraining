//
//  ViewControllerExtension.swift
//  ConstraintsTraining
//
//  Created by Paweł Liczmański on 02.07.2017.
//  Copyright © 2017 Paweł Liczmański. All rights reserved.
//

import UIKit

extension ViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
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
        view.backgroundColor = UIColor.black
        bgd.backgroundColor = UIColor.darkGray
        stacks.backgroundColor = UIColor.clear
        circles.backgroundColor = UIColor.gray
        appText.backgroundColor = UIColor.white
    }
    
    func changingViewsForCompactTrait() {
        circles.backgroundColor = UIColor.gray.withAlphaComponent(0.3)
        appText.backgroundColor = UIColor.white.withAlphaComponent(0.3)
    }
    
    func changingViewsForRegularTrait() {
        circles.backgroundColor = UIColor.gray.withAlphaComponent(1)
        appText.backgroundColor = UIColor.white.withAlphaComponent(1)
    }
    
       
    func addViews() {
        self.view.addSubview(bgd)
        self.view.addSubview(stacks)
        self.view.addSubview(circles)
        self.view.addSubview(appText)
    }
    
    func setupViewsDataAndOptions() {
        bgd.image = UIImage(named: "background")
        bgd.contentMode = .scaleToFill
        
        appText.isEditable = false
        appText.isSelectable = false
        appText.font = UIFont.preferredFont(forTextStyle: .body)
        appText.textAlignment = .justified
        appText.contentOffset = .zero
        appText.text = "Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker \nW przeciwieństwie do rozpowszechnionych opinii, Lorem Ipsum nie jest tylko przypadkowym tekstem. Ma ono korzenie w klasycznej łacińskiej literaturze z 45 roku przed Chrystusem, czyli ponad 2000 lat temu! Richard McClintock, wykładowca łaciny na uniwersytecie Hampden-Sydney w Virginii, przyjrzał się uważniej jednemu z najbardziej niejasnych słów w Lorem Ipsum – consectetur – i po wielu poszukiwaniach odnalazł niezaprzeczalne źródło: Lorem Ipsum pochodzi z fragmentów (1.10.32 i 1.10.33) „de Finibus Bonorum et Malorum”, czyli „O granicy dobra i zła”, napisanej właśnie w 45 p.n.e. przez Cycerona. Jest to bardzo popularna w czasach renesansu rozprawa na temat etyki. Pierwszy wiersz Lorem Ipsum, „Lorem ipsum dolor sit amet...” pochodzi właśnie z sekcji 1.10.32."
    }
    
}
