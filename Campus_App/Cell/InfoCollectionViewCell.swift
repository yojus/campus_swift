//
//  InfoCollectionViewCell.swift
//  Campus_App
//
//  Created by 杉浦陽樹 on 2022/11/18.
//

import UIKit

class InfoCollectionViewCell: UICollectionViewCell {
    
    var user: User? {
        didSet {
            nameTextField.text = user?.name
            emailTextField.text = user?.email
            ageTextField.text = user?.age
            residenceTextField.text = user?.residence
            moneyTextField.text = user?.money
            schoolTextField.text = user?.school
            subjectTextField.text = user?.subject
        }
    }
    
    // MARK: UIViews
    let nameLabel = ProfileLabel(title: "名前")
    let ageLabel = ProfileLabel(title: "年齢")
    let emailLabel = ProfileLabel(title: "email")
    let residenceLabel = ProfileLabel(title: "居住地")
    let moneyLabel = ProfileLabel(title: "時給")
    let schoolLabel = ProfileLabel(title: "大学")
    let subjectLabel = ProfileLabel(title: "担当科目")
    
    let nameTextField = ProfileTextField(placeholder: "名前")
    let ageTextField = ProfileTextField(placeholder: "年齢")
    let emailTextField = ProfileTextField(placeholder: "email")
    let residenceTextField = ProfileTextField(placeholder: "居住地")
    let moneyTextField = ProfileTextField(placeholder: "時給")
    let schoolTextField = ProfileTextField(placeholder: "大学")
    let subjectTextField = ProfileTextField(placeholder: "担当科目")
    
    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        let views = [[nameLabel, nameTextField], [ageLabel, ageTextField], [emailLabel, emailTextField], [residenceLabel, residenceTextField], [moneyLabel, moneyTextField], [schoolLabel, schoolTextField], [subjectLabel, subjectTextField]]
        
        let stackViews = views.map { (views) -> UIStackView in
            guard let label = views.first as? UILabel,
                  let textField = views.last as? UITextField else { return UIStackView() }
            
            let stackView = UIStackView(arrangedSubviews: [label, textField])
            stackView.axis = .vertical
            stackView.spacing = 5
            textField.anchor(height: 50)
            return stackView
        }
        
        
        let baseStackView = UIStackView(arrangedSubviews: stackViews)
        baseStackView.axis = .vertical
        baseStackView.spacing = 15
        
        addSubview(baseStackView)
        nameTextField.anchor(width: UIScreen.main.bounds.width - 40, height: 80)
        baseStackView.anchor(top: topAnchor, bottom: bottomAnchor, left: leftAnchor, right: rightAnchor, topPadding: 10, leftPadding: 20, rightPadding: 20)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
