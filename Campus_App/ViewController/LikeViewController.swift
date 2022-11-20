//
//  LikeViewController.swift
//  Campus_App
//
//  Created by 杉浦陽樹 on 2022/11/19.
//

import UIKit
import Lottie

class LikeViewController: UIViewController {

    let animationView = LottieAnimationView(name: "2")
    var imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
        
        imageView.frame = .init(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        animationView.frame = CGRect(x: view.frame.size.width * CGFloat(), y: 0, width: view.frame.size.width, height: view.frame.size.height)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .autoReverse
        animationView.play()
        imageView.addSubview(animationView)
    }

    private func setupLayout() {
        view.backgroundColor = .lightGray
        
        let stackView = UIStackView(arrangedSubviews: [imageView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        
        self.view.addSubview(stackView)
        
        [
            stackView.topAnchor.constraint(equalTo: view.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor),
            stackView.rightAnchor.constraint(equalTo: view.rightAnchor)]
            .forEach { $0.isActive = true }
    }

}
