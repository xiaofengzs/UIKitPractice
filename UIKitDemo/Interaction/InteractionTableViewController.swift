//
//  InteractionTableViewController.swift
//  UIKitDemo
//
//  Created by Facheng Liang  on 2019/11/12.
//  Copyright © 2019 Facheng Liang . All rights reserved.
//

import UIKit

enum Gesture: String, CaseIterable {
	case tap
	case pan
	case swipe
	case pinch
	case rotation
	case longPress
}

class InteractionTableViewController: UITableViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return Gesture.allCases.count
	}

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = UITableViewCell()
		cell.textLabel?.text = Gesture.allCases[indexPath.row].rawValue
		return cell
	}

	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		guard let cell = tableView.cellForRow(at: indexPath),
			let gesture = Gesture.init(rawValue: cell.textLabel?.text ?? "") else {
				return
		}
		tableView.deselectRow(at: indexPath, animated: true)
		if let gestureViewController = viewController(for: gesture) {
			show(gestureViewController, sender: self)
		}
	}

	private func viewController(for gesture: Gesture) -> UIViewController? {
		switch gesture {
		case .tap:
			return TapViewController()
        case .pan:
            return PanViewController()
        case .swipe:
            return SwipeViewController()
        case .pinch:
            return PinchViewController()
        case .rotation:
            return RotationViewController()
        case .longPress:
            return LongPressViewController()
        default:
			return nil
		}
	}
}
