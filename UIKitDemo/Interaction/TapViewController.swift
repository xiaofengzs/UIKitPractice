//
//  TapViewController.swift
//  UIKitDemo
//
//  Created by Facheng Liang  on 2019/11/12.
//  Copyright © 2019 Facheng Liang . All rights reserved.
//

import UIKit

class TapViewController: UIViewController {

	private let label = UILabel()

	override func viewDidLoad() {
		super.viewDidLoad()
		setupLayout()
		setupUI()
	}

	private func setupUI() {
		view.backgroundColor = .white
		
		title = "Tap"
		label.text = "Tap Change To Red, Double Tap To Green"
		label.textAlignment = .center
		label.numberOfLines = 2
		label.backgroundColor = .orange
		label.isUserInteractionEnabled = true

		let tap = UITapGestureRecognizer(target: self, action: #selector(responseToTapGesture))
		tap.numberOfTapsRequired = 1
		label.addGestureRecognizer(tap)

		let doubleTap = UITapGestureRecognizer(target: self, action: #selector(responseToTapGesture))
		doubleTap.numberOfTapsRequired = 2
		label.addGestureRecognizer(doubleTap)

		tap.require(toFail: doubleTap)
	}

	@objc func responseToTapGesture(_ tap: UITapGestureRecognizer) {
		if tap.numberOfTapsRequired == 1 {
			label.backgroundColor = .red
		} else if tap.numberOfTapsRequired == 2 {
			label.backgroundColor = .green
		}
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
