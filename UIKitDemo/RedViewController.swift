//
//  LifecycleSecondViewController.swift
//  UIKitDemo
//
//  Created by Facheng Liang  on 2019/11/11.
//  Copyright © 2019 Facheng Liang . All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		print("\(Date().timeIntervalSince1970)  red: viewDidLoad")
	}

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		print("\(Date().timeIntervalSince1970)  red: viewWillAppear")
	}

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		print("\(Date().timeIntervalSince1970)  red: viewDidAppear")
	}

	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		print("\(Date().timeIntervalSince1970)  red: viewWillDisappear")
	}

	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		print("\(Date().timeIntervalSince1970)  red: viewDidDisappear")
	}

	@IBAction func clickBackToGreen(_ sender: Any) {
		navigationController?.popViewController(animated: true)
	}
}
