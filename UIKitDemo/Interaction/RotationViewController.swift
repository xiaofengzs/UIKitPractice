//
//  RotationViewController.swift
//  UIKitDemo
//
//  Created by vince-zhi on 2019/11/17.
//  Copyright © 2019 Facheng Liang . All rights reserved.
//

import UIKit

class RotationViewController: UIViewController{
    private let label = UILabel()
    
   override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .white
        
        title = "Rotation"
        label.text = "Rotation Change To Purpul"
        label.textAlignment = .center
        label.numberOfLines = 2
        label.backgroundColor = .orange
        label.isUserInteractionEnabled = true
        
        let rotation = UIRotationGestureRecognizer(target: self, action: #selector(responseToRotationGesture))
        label.addGestureRecognizer(rotation)
    }

    @objc func responseToRotationGesture(_ tap: UIRotationGestureRecognizer) {
        label.text = "it's roration"
        label.backgroundColor = .purple
    }

    private func setupLayout() {
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.widthAnchor.constraint(equalToConstant: 200),
            label.heightAnchor.constraint(equalToConstant: 200),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
