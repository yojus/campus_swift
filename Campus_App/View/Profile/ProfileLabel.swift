//
//  ProfileLabel.swift
//  Campus_App
//
//  Created by 杉浦陽樹 on 2022/11/18.
//

import UIKit

class ProfileLabel: UILabel {
    
    init() {
        super.init(frame: .zero)
        
        self.font = UIFont(name: "AvenirNext-BoldItalic", size: 45)
        self.textColor = .black
    }
    
    // infoCollectionViewCellのtitleLabel
    init(title: String) {
        super.init(frame: .zero)
        
        self.text = title
        self.textColor = .darkGray
        self.font = UIFont(name: "CourierNewPSMT", size: 14)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
