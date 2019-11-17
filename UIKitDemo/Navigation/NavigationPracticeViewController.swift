//
//  NavigationPracticeViewController.swift
//  UIKitDemo
//
//  Created by Facheng Liang  on 2019/11/11.
//  Copyright © 2019 Facheng Liang . All rights reserved.
//

import UIKit

class NavigationPracticeViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	@IBAction func clickPushButton(_ sender: Any) {
		// Navigation-TODO1: Push `GreenViewController`
        let greenViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "GreenViewController")
        show(greenViewController, sender: self)
	}

	@IBAction func clickPresentButton(_ sender: Any) {
		// Navigation-TODO2: Present `GreenViewController`
        let greenViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "GreenViewController")
        self.present(greenViewController, animated: true)
	}
}
