//
//  LabelComponentViewController.swift
//  UIKitDemo
//
//  Created by vince-zhi on 2019/11/17.
//  Copyright © 2019 Facheng Liang . All rights reserved.
//

import UIKit

class LabelComponentViewController: UIViewController {
    
    private let label = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLayout()
        setupUI()
    }

    private func setupUI() {
        // backgroundColor
        label.backgroundColor = .systemPink
        // alpha
        label.alpha = 0.5
        // isHidden
        // addSubView()
        // insertSubview()
        // removeFromSuperview()
        // ...
    }

    private func setupLayout() {
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.widthAnchor.constraint(equalToConstant: 200),
            label.heightAnchor.constraint(equalToConstant: 50),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
}
