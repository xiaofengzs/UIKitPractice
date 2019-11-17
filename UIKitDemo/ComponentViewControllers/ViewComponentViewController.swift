//
//  ViewComponentViewController.swift
//  UIKitDemo
//
//  Created by Facheng Liang  on 2019/11/6.
//  Copyright © 2019 Facheng Liang . All rights reserved.
//

import UIKit

class ViewComponentViewController: UIViewController {
	/*
	Move the cursor to `UIView`:
	1. press `Option` and click to see quick help of `UIView`
	2. press `Cmd`+`Ctrl` and click to jump to definition, see the preporties of `UIView`
	*/
	private let contentView = UIView()

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white
		setupLayout()
		setupUI()
	}

	private func setupUI() {
		// backgroundColor
		contentView.backgroundColor = .orange
		// alpha
		// isHidden
		// addSubView()
		// insertSubview()
		// removeFromSuperview()
		// ...
	}

	private func setupLayout() {
		view.addSubview(contentView)
		contentView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			contentView.widthAnchor.constraint(equalToConstant: 200),
			contentView.heightAnchor.constraint(equalToConstant: 200),
			contentView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			contentView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
		])
	}
}
