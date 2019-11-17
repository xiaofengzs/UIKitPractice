//
//  ComponentTableViewController.swift
//  UIKitDemo
//
//  Created by Facheng Liang  on 2019/11/6.
//  Copyright © 2019 Facheng Liang . All rights reserved.
//

import UIKit

enum Component: String, CaseIterable {
	case view
	case label
	case button
	case imageView
	case textField
}

class ComponentTableViewController: UITableViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return Component.allCases.count
	}

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = UITableViewCell()
		cell.textLabel?.text = Component.allCases[indexPath.row].rawValue
		return cell
	}

	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		guard let cell = tableView.cellForRow(at: indexPath),
			let component = Component.init(rawValue: cell.textLabel?.text ?? "") else {
				return
		}
		tableView.deselectRow(at: indexPath, animated: true)
		if let componentViewController = viewController(for: component) {
			show(componentViewController, sender: self)
		}
	}

	private func viewController(for component: Component) -> UIViewController? {
		switch component {
		case .view:
			return ViewComponentViewController()
        case .label:
            return LabelComponentViewController()
        case .button:
            return ButtonComponentViewController()
        case .imageView:
            return ImageViewComponentViewController()
		default:
			return nil
		}
	}
}
