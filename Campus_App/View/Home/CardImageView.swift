//
//  CardImageView.swift
//  Campus_App
//
//  Created by 杉浦陽樹 on 2022/11/18.
//

import UIKit

class CardImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        image = UIImage(named: "test-image")
        backgroundColor = .gray
        layer.cornerRadius = 10
        contentMode = .scaleAspectFill
        clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
