//
//  PinchViewController.swift
//  UIKitDemo
//
//  Created by vince-zhi on 2019/11/17.
//  Copyright © 2019 Facheng Liang . All rights reserved.
//

import UIKit

class PinchViewController: UIViewController {
    
    private let imageView = UIImageView()
    
   override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .white
        imageView.image = UIImage(named:"aprime_katner_view_controllers")
        imageView.isUserInteractionEnabled = true

        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(responseToPinchGesture))
        imageView.addGestureRecognizer(pinch)
    }

    @objc func responseToPinchGesture(_ tap: UITapGestureRecognizer) {
        imageView.alpha = 0.1
    }

    private func setupLayout() {
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.heightAnchor.constraint(equalToConstant: 200),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
