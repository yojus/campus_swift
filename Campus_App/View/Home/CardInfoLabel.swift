//
//  CardInfoLabel.swift
//  Campus_App
//
//  Created by 杉浦陽樹 on 2022/11/18.
//

import UIKit

class CardInfoLabel: UILabel {
    
    // nopeとgoodのラベル
    init(text: String, textColor: UIColor) {
        super.init(frame: .zero)
        
        font = UIFont(name: "PartyLetPlain", size: 45)
        self.text = text
        self.textColor = textColor
        
        /*
        layer.borderWidth = 3
        layer.borderColor = textColor.cgColor
        layer.cornerRadius = 10
         */
        
        textAlignment = .center
        alpha = 0
    }
    
    // その他のtextColorが白のラベル
    init(font: UIFont) {
        super.init(frame: .zero)
        self.font = font
        textColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
