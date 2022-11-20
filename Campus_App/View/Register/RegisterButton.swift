//
//  RegisterButton.swift
//  Campus_App
//
//  Created by 杉浦陽樹 on 2022/11/18.
//

import Foundation

import UIKit

class RegisterButton: UIButton {

    override var isHighlighted: Bool {
        didSet {
            self.backgroundColor = isHighlighted ? .rgb(red: 1, green: 1, blue: 1, alpha: 0.2) : .rgb(red: 1, green: 1, blue: 1)
        }
    }

    
    init(text: String) {
        super.init(frame: .zero)
        setTitle(text, for: .normal)
        // UIFont(name: "SavoyeLetPlain", size: 20)
        backgroundColor = .rgb(red: 1, green: 1, blue: 1)
        setTitleColor(.white, for: .normal)
        layer.cornerRadius = 10
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
