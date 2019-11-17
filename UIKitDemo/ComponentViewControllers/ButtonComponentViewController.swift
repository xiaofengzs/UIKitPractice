//
//  ButtonComponentViewController.swift
//  UIKitDemo
//
//  Created by vince-zhi on 2019/11/17.
//  Copyright © 2019 Facheng Liang . All rights reserved.
//

import UIKit

class ButtonComponentViewController: UIViewController {
    
    private let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        setupLayout()
        setupUI()
    }
    
    private func setupUI() {
          // backgroundColor
        button.backgroundColor = .systemPink
        button.setTitle("click", for: .normal)
          // isHidden
//        button.isHidden = true
          // addSubView()
          // insertSubview()
          // removeFromSuperview()
          // ...
      }

      private func setupLayout() {
          view.addSubview(button)
          button.translatesAutoresizingMaskIntoConstraints = false
          NSLayoutConstraint.activate([
              button.widthAnchor.constraint(equalToConstant: 50),
              button.heightAnchor.constraint(equalToConstant: 50),
              button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
              button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
          ])
      }
      
}
