//
//  ViewController.swift
//  Homework_3_UI_programmatically
//
//  Created by Maciej Lipiec on 2022-05-08.
//

import UIKit

class ViewController: UIViewController {

	let screenHeight = UIScreen.main.bounds.height
	let screenWidth = UIScreen.main.bounds.width
	
	let hamburgerMenu: UIButton = {
		let button = UIButton(type: .system)
		button.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
		button.setImage(UIImage(systemName: "pause.fill"), for: .normal)
		button.imageView?.centerYAnchor.constraint(equalTo: button.centerYAnchor).isActive = true
		button.imageView?.centerXAnchor.constraint(equalTo: button.centerXAnchor).isActive = true
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	} ()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.addSubview(hamburgerMenu)
		
		setupLayout()
	}
	
	private func setupLayout() {
		hamburgerMenu.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
		hamburgerMenu.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
		hamburgerMenu.heightAnchor.constraint(equalToConstant: 20).isActive = true
		hamburgerMenu.widthAnchor.constraint(equalToConstant: 20).isActive = true
	}


}

