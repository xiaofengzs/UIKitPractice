//
//  ViewController.swift
//  UIKitDemo
//
//  Created by Facheng Liang  on 2019/11/6.
//  Copyright © 2019 Facheng Liang . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	@IBAction func clickLifecycle(_ sender: Any) {
		let greenViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "GreenViewController")
		show(greenViewController, sender: self)
	}

	@IBAction func clickNavigation(_ sender: Any) {
		let navigationPracticeViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "NavigationPracticeViewController")
		show(navigationPracticeViewController, sender: self)
	}

	@IBAction func clickInteraction(_ sender: Any) {
		let interactionTableViewController = InteractionTableViewController()
		show(interactionTableViewController, sender: self)
	}
	
}



