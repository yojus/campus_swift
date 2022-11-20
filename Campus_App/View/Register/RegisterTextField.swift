//
//  RegisterTextField.swift
//  Campus_App
//
//  Created by 杉浦陽樹 on 2022/11/18.
//

import UIKit

class RegisterTextField: UITextField {

    init(placeHolder: String) {
        super.init(frame: .zero)

        placeholder = placeHolder
        borderStyle = .roundedRect
        font = .systemFont(ofSize: 14)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
