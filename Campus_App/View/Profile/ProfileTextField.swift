//
//  ProfileTextField.swift
//  Campus_App
//
//  Created by 杉浦陽樹 on 2022/11/18.
//

import UIKit

class ProfileTextField: UITextField {

    init(placeholder: String) {
        super.init(frame: .zero)
        self.font = UIFont(name: "CourierNewPSMT", size: 14)
        self.borderStyle = .roundedRect
        self.placeholder = placeholder
        self.backgroundColor = .rgb(red: 245, green: 245, blue: 245)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
