//
//  LongPressViewController.swift
//  UIKitDemo
//
//  Created by vince-zhi on 2019/11/17.
//  Copyright © 2019 Facheng Liang . All rights reserved.
//

import UIKit

class LongPressViewController: UIViewController {
    private let label = UILabel()
    
   override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .white
        
        title = "LongPress"
        label.text = "LongPress To Blue"
        label.textAlignment = .center
        label.numberOfLines = 2
        label.backgroundColor = .orange
        label.isUserInteractionEnabled = true
        let longPress = UILongPressGestureRecognizer(target:self, action: #selector(responseToLongPressGesture))
        label.addGestureRecognizer(longPress)
    }
    
   @objc func responseToLongPressGesture(_ tap: UILongPressGestureRecognizer) {
        label.text = "it is too long"
        label.backgroundColor = .blue
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
