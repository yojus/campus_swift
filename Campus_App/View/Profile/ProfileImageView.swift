//
//  ProfileImageView.swift
//  Campus_App
//
//  Created by 杉浦陽樹 on 2022/11/18.
//

import UIKit

class ProfileImageView: UIImageView {

    init() {
        super.init(frame: .zero)

        self.image = UIImage(named: "test-image")
        self.contentMode = .scaleAspectFill
        self.layer.cornerRadius = 90
        self.layer.masksToBounds = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
