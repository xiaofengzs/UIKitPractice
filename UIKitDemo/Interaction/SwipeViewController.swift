//
//  SwipeViewController.swift
//  UIKitDemo
//
//  Created by vince-zhi on 2019/11/17.
//  Copyright © 2019 Facheng Liang . All rights reserved.
//

import UIKit

class SwipeViewController: UIViewController {
    private let swipeLabel = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        setupLayout()
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
            
        leftSwipe.direction = .left
        rightSwipe.direction = .right

        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(rightSwipe)
    }
    
   @objc func handleSwipes(_ sender:UISwipeGestureRecognizer) {
        if (sender.direction == .left) {
                print("Swipe Left")
            let labelPosition = CGPoint(x: swipeLabel.frame.origin.x - 50.0, y: swipeLabel.frame.origin.y)
            swipeLabel.frame = CGRect(x: labelPosition.x, y: labelPosition.y, width: swipeLabel.frame.size.width, height: swipeLabel.frame.size.height)
        }
            
        if (sender.direction == .right) {
            print("Swipe Right")
            let labelPosition = CGPoint(x: self.swipeLabel.frame.origin.x + 50.0, y: self.swipeLabel.frame.origin.y)
            swipeLabel.frame = CGRect(x: labelPosition.x, y: labelPosition.y, width: self.swipeLabel.frame.size.width, height: self.swipeLabel.frame.size.height)
        }
    }
    
    private func setupUI() {
           // backgroundColor
           swipeLabel.backgroundColor = .systemPink
           // alpha
           swipeLabel.alpha = 0.5
           // isHidden
           // addSubView()
           // insertSubview()
           // removeFromSuperview()
           // ...
       }

       private func setupLayout() {
           view.addSubview(swipeLabel)
           swipeLabel.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
               swipeLabel.widthAnchor.constraint(equalToConstant: 200),
               swipeLabel.heightAnchor.constraint(equalToConstant: 50),
               swipeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
               swipeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
           ])
       }
    
}
