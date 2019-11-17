//
//  PanViewController.swift
//  UIKitDemo
//
//  Created by vince-zhi on 2019/11/17.
//  Copyright © 2019 Facheng Liang . All rights reserved.
//

import UIKit

class PanViewController: UIViewController {
    private let imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named:"aprime_katner_view_controllers")
        imageView.sizeToFit()
        imageView.isUserInteractionEnabled = true
        self.view.addSubview(imageView)
        
        let pan = UIPanGestureRecognizer.init(target: self, action: #selector(handlePan(recognizer:)))
        imageView.addGestureRecognizer(pan)
    }
    
    @objc func handlePan(recognizer: UIPanGestureRecognizer) {
        let translation = recognizer.translation(in: self.view)
        if let view = recognizer.view {
            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        }
        recognizer.setTranslation(CGPoint.zero, in: self.view)
    }
    
    

}
