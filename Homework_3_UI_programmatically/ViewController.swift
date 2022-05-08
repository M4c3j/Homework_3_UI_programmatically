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
	
	// MARK: - Hamburger menu
	let hamburgerMenu: UIButton = {
		let button = UIButton(type: .system)
		let image = UIImage(systemName: "text.justify.left",
							withConfiguration: UIImage.SymbolConfiguration(pointSize: 16, weight: .bold, scale: .large ))?.withTintColor(.orange, renderingMode: .alwaysOriginal)
		button.setImage(image, for: .normal)
//		button.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
		button.imageView?.centerYAnchor.constraint(equalTo: button.centerYAnchor).isActive = true
		button.imageView?.centerXAnchor.constraint(equalTo: button.centerXAnchor).isActive = true
		
		button.translatesAutoresizingMaskIntoConstraints = false
		
		return button
	} ()
	
	// MARK: - My Profile - button with face in top right corner
	let myProfileButton: UIButton = {
		let button = UIButton(type: .system)
		let image = UIImage(named: "MyProfileIcon")
		button.setImage(image, for: .normal)
		button.backgroundColor = UIColor.orange
		button.layer.cornerRadius = 8

//		button.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
		button.imageView?.centerYAnchor.constraint(equalTo: button.centerYAnchor).isActive = true
		button.imageView?.centerXAnchor.constraint(equalTo: button.centerXAnchor).isActive = true
		
		button.translatesAutoresizingMaskIntoConstraints = false
		
		return button
	} ()
	
//	// MARK: - FIND MORE text
//	let findMoreText: UITextView {
//		let text = UITextView()
//		
//		return text
//	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.addSubview(hamburgerMenu)
		view.addSubview(myProfileButton)
		
		setupLayout()
	}
	
	private func setupLayout() {
		hamburgerMenu.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: screenWidth * 0.04).isActive = true
		hamburgerMenu.topAnchor.constraint(equalTo: view.topAnchor, constant: screenHeight * 0.08).isActive = true
		hamburgerMenu.heightAnchor.constraint(equalToConstant: 40).isActive = true
		hamburgerMenu.widthAnchor.constraint(equalToConstant: 40).isActive = true
		
		myProfileButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -screenWidth * 0.04).isActive = true
		myProfileButton.topAnchor.constraint(equalTo: view.topAnchor, constant: screenHeight * 0.08).isActive = true
		myProfileButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
		myProfileButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
	}


}


//Turn around view
	//		button.imageView?.transform = CGAffineTransform(rotationAngle: Double.pi/2)
