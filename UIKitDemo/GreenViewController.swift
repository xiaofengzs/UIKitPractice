//
//  GreenViewController.swift
//  UIKitDemo
//
//  Created by Facheng Liang  on 2019/11/11.
//  Copyright © 2019 Facheng Liang . All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

	// Figure out the order of a `UIViewController`'s lifecycle

	override func viewDidLoad() {
		super.viewDidLoad()
		print("\(Date().timeIntervalSince1970)  green: viewDidLoad")
	}

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		print("\(Date().timeIntervalSince1970)  green: viewWillAppear")
	}

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		print("\(Date().timeIntervalSince1970)  green: viewDidAppear")
	}

	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		print("\(Date().timeIntervalSince1970)  green: viewWillDisappear")
	}

	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		print("\(Date().timeIntervalSince1970)  green: viewDidDisappear")
	}

	@IBAction func clickForwardToRed(_ sender: Any) {
		let redViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "RedViewController")
		show(redViewController, sender: self)
	}
}
