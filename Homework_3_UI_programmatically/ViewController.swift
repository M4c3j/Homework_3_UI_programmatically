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
		button.imageView?.contentMode = .scaleAspectFit
		button.setImage(image, for: .normal)
		button.backgroundColor = UIColor.orange
		button.layer.cornerRadius = 8

//		button.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
		button.imageView?.centerYAnchor.constraint(equalTo: button.centerYAnchor).isActive = true
		button.imageView?.centerXAnchor.constraint(equalTo: button.centerXAnchor).isActive = true
		button.translatesAutoresizingMaskIntoConstraints = false
		
		return button
	} ()
	
	// MARK: - FIND MORE text
	let findMoreText: UILabel = {
		
		let label = UILabel()
		label.text = "Find More"
		label.font = .systemFont(ofSize: 30, weight: .bold)
		label.textAlignment = .left
		label.textColor = .black
		
		label.translatesAutoresizingMaskIntoConstraints = false
		
		return label
	}()
	
	// MARK: - Experiences Button
	let experiencesButton: UIButton = {
		let button = UIButton(type: .system)
		let text = NSAttributedString(string: "Experiences", attributes: [
			.font: UIFont.systemFont(ofSize: 15, weight: .heavy),
			.foregroundColor: UIColor.black,
		])
		button.contentHorizontalAlignment = .leading
		button.setAttributedTitle(text, for: .normal)
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()
	
		// MARK: - Adventures Button
	let adventuresButton: UIButton = {
		let button = UIButton(type: .system)
		let text = NSAttributedString(string: "Adventures", attributes: [
			.font: UIFont.systemFont(ofSize: 15, weight: .regular),
			.foregroundColor: UIColor.gray,
		])
		button.setAttributedTitle(text, for: .normal)
		button.contentHorizontalAlignment = .trailing
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()
	
		// MARK: - Adventures Button
	let activitiesButton: UIButton = {
		let button = UIButton(type: .system)
		let text = NSAttributedString(string: "Activities", attributes: [
			.font: UIFont.systemFont(ofSize: 15, weight: .regular),
			.foregroundColor: UIColor.gray,
		])
		button.contentHorizontalAlignment = .trailing
		button.setAttributedTitle(text, for: .normal)
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.addSubview(hamburgerMenu)
		view.addSubview(myProfileButton)
		view.addSubview(findMoreText)
		view.addSubview(experiencesButton)
		view.addSubview(adventuresButton)
		view.addSubview(activitiesButton)
		
		setupLayout()
	}
	
	private func setupLayout() {
		hamburgerMenu.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: screenWidth * 0.04).isActive = true
		hamburgerMenu.topAnchor.constraint(equalTo: view.topAnchor, constant: screenHeight * 0.08).isActive = true
		hamburgerMenu.heightAnchor.constraint(equalToConstant: 40).isActive = true
		hamburgerMenu.widthAnchor.constraint(equalToConstant: 40).isActive = true
		
		myProfileButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -screenWidth * 0.04).isActive = true
		myProfileButton.topAnchor.constraint(equalTo: view.topAnchor, constant: screenHeight * 0.08).isActive = true
		myProfileButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
		myProfileButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
		
		findMoreText.topAnchor.constraint(equalTo: hamburgerMenu.bottomAnchor, constant: screenHeight * 0.05).isActive = true
		findMoreText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: screenWidth * 0.04).isActive = true
		findMoreText.heightAnchor.constraint(equalToConstant: 50).isActive = true
		findMoreText.widthAnchor.constraint(equalToConstant: screenWidth * 0.8).isActive = true
		
		experiencesButton.topAnchor.constraint(equalTo: findMoreText.topAnchor, constant: screenHeight * 0.07).isActive = true
		experiencesButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: screenWidth * 0.04).isActive = true
		experiencesButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
		experiencesButton.widthAnchor.constraint(equalToConstant: screenWidth * 0.25).isActive = true
		
		adventuresButton.topAnchor.constraint(equalTo: findMoreText.topAnchor, constant: screenHeight * 0.07).isActive = true
		adventuresButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		adventuresButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
		adventuresButton.widthAnchor.constraint(equalToConstant: screenWidth * 0.25).isActive = true

		activitiesButton.topAnchor.constraint(equalTo: findMoreText.topAnchor, constant: screenHeight * 0.07).isActive = true
		activitiesButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -screenWidth * 0.04).isActive = true
		activitiesButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
		activitiesButton.widthAnchor.constraint(equalToConstant: screenWidth * 0.22).isActive = true
	}


}


//Turn around view
	//		button.imageView?.transform = CGAffineTransform(rotationAngle: Double.pi/2)
