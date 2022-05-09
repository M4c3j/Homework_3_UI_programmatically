//
//  ViewController.swift
//  Homework_3_UI_programmatically
//
//  Created by Maciej Lipiec on 2022-05-08.
//

import UIKit

class ViewController: UIViewController {

	var screenHeight = UIScreen.main.bounds.height
	var screenWidth = UIScreen.main.bounds.width
	
	let hamburgerMenu: UIButton = {
		let button = UIButton(type: .system)
		let image = UIImage(systemName: "text.justify.left",
							withConfiguration: UIImage.SymbolConfiguration(pointSize: 16, weight: .bold, scale: .large ))?.withTintColor(.orange, renderingMode: .alwaysOriginal)
		button.setImage(image, for: .normal)
		button.imageView?.centerYAnchor.constraint(equalTo: button.centerYAnchor).isActive = true
		button.imageView?.centerXAnchor.constraint(equalTo: button.centerXAnchor).isActive = true
		button.translatesAutoresizingMaskIntoConstraints = false
		
		return button
	} ()
	
	let myProfileButton: UIButton = {
		let button = UIButton(type: .system)
		button.addTarget(self, action: #selector(didClickOnButton), for: .touchUpInside)
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
	
	let findMoreText: UILabel = {
		
		let label = UILabel()
		label.text = "Find More"
		label.font = .systemFont(ofSize: 30, weight: .bold)
		label.textAlignment = .left
		label.textColor = .black
		
		label.translatesAutoresizingMaskIntoConstraints = false
		
		return label
	}()
	
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
	
	let scrollView: UIScrollView = {
		let view = UIScrollView()
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	let scrollStackViewContainer: UIStackView = {
		let view = UIStackView()
		view.axis = .horizontal
		view.distribution = .fillEqually
		view.spacing = 15
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	} ()
	let subView1: UIView = {
		let view = UIView()
		view.widthAnchor.constraint(equalToConstant: 120).isActive = true
		view.backgroundColor = UIColor.orange
		view.layer.cornerRadius = 20
		return view
	}()
	
	let subView2: UIView = {
		let view = UIView()
		view.widthAnchor.constraint(equalToConstant: 120).isActive = true
		view.backgroundColor = UIColor.orange
		view.layer.cornerRadius = 20
		return view
	}()
	
	let whatYouWant: UILabel = {
		let label = UILabel()
		label.text = "What you want?"
		label.font = .systemFont(ofSize: 15, weight: .heavy)
		label.textAlignment = .left
		label.textColor = .black
		
		label.translatesAutoresizingMaskIntoConstraints = false
		
		return label
	}()
	let viewAll: UIButton = {
		let button = UIButton(type: .system)
		let text = NSAttributedString(string: "View all", attributes: [
			.font: UIFont.systemFont(ofSize: 15, weight: .regular),
			.foregroundColor: UIColor.gray,
		])
		button.contentHorizontalAlignment = .trailing
		button.setAttributedTitle(text, for: .normal)
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()
	
	let smallScrollView:  UIScrollView = {
		let view = UIScrollView()
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	let smallScrollStackViewContainer: UIStackView = {
		let view = UIStackView()
		view.axis = .horizontal
		view.distribution = .fillEqually
		view.spacing = 30
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	} ()
	let smallSubView1: UIView = {
		let view = UIView()
		view.widthAnchor.constraint(equalToConstant: 80).isActive = true
		view.backgroundColor = UIColor.orange
		view.layer.cornerRadius = 20
		return view
	}()
	let smallSubView2: UIView = {
		let view = UIView()
		view.widthAnchor.constraint(equalToConstant: 80).isActive = true
		view.backgroundColor = UIColor.orange
		view.layer.cornerRadius = 20
		return view
	}()
	let smallSubView3: UIView = {
		let view = UIView()
		view.widthAnchor.constraint(equalToConstant: 80).isActive = true
		view.backgroundColor = UIColor.orange
		view.layer.cornerRadius = 20
		return view
	}()
	let smallSubView4: UIView = {
		let view = UIView()
		view.widthAnchor.constraint(equalToConstant: 80).isActive = true
		view.backgroundColor = UIColor.orange
		view.layer.cornerRadius = 20
		return view
	}()
		
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.addSubview(hamburgerMenu)
		view.addSubview(myProfileButton)
		view.addSubview(findMoreText)
		view.addSubview(experiencesButton)
		view.addSubview(adventuresButton)
		view.addSubview(activitiesButton)
		
		view.addSubview(scrollView)
		scrollView.addSubview(scrollStackViewContainer)
		scrollStackViewContainer.addArrangedSubview(subView1)
		scrollStackViewContainer.addArrangedSubview(subView2)
		
		view.addSubview(whatYouWant)
		view.addSubview(viewAll)
		
		view.addSubview(smallScrollView)
		smallScrollView.addSubview(smallScrollStackViewContainer)
		smallScrollStackViewContainer.addArrangedSubview(smallSubView1)
		smallScrollStackViewContainer.addArrangedSubview(smallSubView2)
		smallScrollStackViewContainer.addArrangedSubview(smallSubView3)
		smallScrollStackViewContainer.addArrangedSubview(smallSubView4)
		
		
		
		setupLayout()
	}
	
	
	private func setupLayout() {
		hamburgerMenu.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: screenWidth * 0.04).isActive = true
		hamburgerMenu.topAnchor.constraint(equalTo: view.topAnchor, constant: screenHeight * 0.06).isActive = true
		hamburgerMenu.heightAnchor.constraint(equalToConstant: 40).isActive = true
		hamburgerMenu.widthAnchor.constraint(equalToConstant: 40).isActive = true
		
		myProfileButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -screenWidth * 0.04).isActive = true
		myProfileButton.topAnchor.constraint(equalTo: view.topAnchor, constant: screenHeight * 0.06).isActive = true
		myProfileButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
		myProfileButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
		
		findMoreText.topAnchor.constraint(equalTo: hamburgerMenu.bottomAnchor, constant: screenHeight * 0.01).isActive = true
		findMoreText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: screenWidth * 0.04).isActive = true
		findMoreText.heightAnchor.constraint(equalToConstant: 50).isActive = true
		findMoreText.widthAnchor.constraint(equalToConstant: screenWidth * 0.8).isActive = true
		
		experiencesButton.topAnchor.constraint(equalTo: findMoreText.bottomAnchor, constant: screenHeight * 0.015).isActive = true
		experiencesButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: screenWidth * 0.04).isActive = true
		experiencesButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
		experiencesButton.widthAnchor.constraint(equalToConstant: screenWidth * 0.25).isActive = true
		
		adventuresButton.topAnchor.constraint(equalTo: findMoreText.bottomAnchor, constant: screenHeight * 0.015).isActive = true
		adventuresButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		adventuresButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
		adventuresButton.widthAnchor.constraint(equalToConstant: screenWidth * 0.25).isActive = true

		activitiesButton.topAnchor.constraint(equalTo: findMoreText.bottomAnchor, constant: screenHeight * 0.015).isActive = true
		activitiesButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -screenWidth * 0.04).isActive = true
		activitiesButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
		activitiesButton.widthAnchor.constraint(equalToConstant: screenWidth * 0.22).isActive = true
		
		scrollView.topAnchor.constraint(equalTo: experiencesButton.bottomAnchor, constant: screenHeight * 0.015).isActive = true
		scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: screenWidth * 0.04).isActive = true
		scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -screenWidth * 0.04).isActive = true
		scrollView.heightAnchor.constraint(equalToConstant: screenHeight * 0.4).isActive = true
		
		scrollStackViewContainer.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
		scrollStackViewContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
		scrollStackViewContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
		scrollStackViewContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
		scrollStackViewContainer.widthAnchor.constraint(greaterThanOrEqualToConstant: screenWidth).isActive = true

		subView1.heightAnchor.constraint(equalToConstant: screenHeight * 0.4).isActive = true
		
		whatYouWant.topAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: screenHeight * 0.015).isActive = true
		whatYouWant.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: screenWidth * 0.04).isActive = true
		whatYouWant.heightAnchor.constraint(equalToConstant: 40).isActive = true
		whatYouWant.widthAnchor.constraint(equalToConstant: screenWidth * 0.4).isActive = true
		
		viewAll.topAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: screenHeight * 0.015).isActive = true
		viewAll.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -screenWidth * 0.04).isActive = true
		viewAll.heightAnchor.constraint(equalToConstant: 40).isActive = true
		viewAll.widthAnchor.constraint(equalToConstant: screenWidth * 0.4).isActive = true
		
		smallScrollView.topAnchor.constraint(equalTo: whatYouWant.bottomAnchor, constant: screenHeight * 0.015).isActive = true
		smallScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: screenWidth * 0.04).isActive = true
		smallScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -screenWidth * 0.04).isActive = true
		smallScrollView.heightAnchor.constraint(equalToConstant: screenHeight * 0.1).isActive = true

		smallScrollStackViewContainer.topAnchor.constraint(equalTo: smallScrollView.topAnchor).isActive = true
		smallScrollStackViewContainer.leadingAnchor.constraint(equalTo: smallScrollView.leadingAnchor).isActive = true
		smallScrollStackViewContainer.trailingAnchor.constraint(equalTo: smallScrollView.trailingAnchor).isActive = true
		smallScrollStackViewContainer.bottomAnchor.constraint(equalTo: smallScrollView.bottomAnchor).isActive = true
		smallScrollStackViewContainer.widthAnchor.constraint(greaterThanOrEqualToConstant: screenWidth).isActive = true

		smallSubView1.heightAnchor.constraint(equalToConstant: screenHeight * 0.1).isActive = true
 	}
	
	@IBAction func didClickOnButton() {
		self.present(PopUpWindow(), animated: true, completion: nil)
	}
}


//Turn around view
	//		button.imageView?.transform = CGAffineTransform(rotationAngle: Double.pi/2)
