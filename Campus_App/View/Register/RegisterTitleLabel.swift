//
//  RegisterTitleLabel.swift
//  Campus_App
//
//  Created by 杉浦陽樹 on 2022/11/18.
//

import UIKit

class RegisterTitleLabel: UILabel {
    
    init(text: String) {
        super.init(frame: .zero)
        self.text = text
        self.font = UIFont(name: "Chalkduster", size: 60)
        self.textColor = .black
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
