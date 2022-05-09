//
//  PopUpWindow.swift
//  Homework_3_UI_programmatically
//
//  Created by Maciej Lipiec on 2022-05-09.
//

import UIKit

class PopUpWindow: UIViewController {

	var screenHeight = UIScreen.main.bounds.height
	var screenWidth = UIScreen.main.bounds.width
	
	let topImage: UIView = {
		let view = UIView()
		view.backgroundColor = .orange
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	let background: UIView = {
		let view = UIView()
		view.backgroundColor = .white
		view.layer.cornerRadius = 40
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	let forest: UITextView = {
		let view = UITextView()
		view.text = "Forest"
		view.font = .systemFont(ofSize: 30, weight: .black)
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	let camping: UITextView = {
		let view = UITextView()
		view.text = "Camping"
		view.font = .systemFont(ofSize: 30, weight: .black)
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	let price: UITextView = {
		let view = UITextView()
		view.text = "$299"
		view.font = .systemFont(ofSize: 40, weight: .regular)
		view.textColor = .orange
		view.textAlignment = .right
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	let kecamatanKlojen: UILabel = {
		let view = UILabel()
		let text = NSTextAttachment()
		let attributes: [NSAttributedString.Key: Any] = [
			.font: UIFont.systemFont(ofSize: 15, weight: .regular),
			.foregroundColor: UIColor.orange,
		]
		text.image = UIImage(systemName: "mappin.circle")!
			.withTintColor(.orange)
		let fullString = NSMutableAttributedString()
		fullString.append(NSAttributedString(attachment: text))
		fullString.append(NSAttributedString(string: " Kecamatan Klojen", attributes: attributes))
		view.attributedText = fullString
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	let stars: UILabel = {
		let view = UILabel()
		
		return view
	}()
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		view.addSubview(topImage)
		view.addSubview(background)
		view.addSubview(forest)
		view.addSubview(camping)
		view.addSubview(price)
		view.addSubview(kecamatanKlojen)

        // Do any additional setup after loading the view.
		setupLayout()
    }
	
	private func setupLayout() {
		topImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		topImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		topImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		topImage.heightAnchor.constraint(equalToConstant: screenHeight * 0.3).isActive = true
		
		background.topAnchor.constraint(equalTo: topImage.bottomAnchor, constant: -40).isActive = true
		background.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		background.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		background.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
		
		forest.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: screenWidth * 0.04).isActive = true
		forest.topAnchor.constraint(equalTo: background.topAnchor, constant: screenWidth * 0.04).isActive = true
		forest.heightAnchor.constraint(equalToConstant: 45).isActive = true
		forest.widthAnchor.constraint(equalToConstant: screenWidth * 0.6).isActive = true
		
		camping.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: screenWidth * 0.04).isActive = true
		camping.topAnchor.constraint(equalTo: forest.bottomAnchor).isActive = true
		camping.heightAnchor.constraint(equalToConstant: 45).isActive = true
		camping.widthAnchor.constraint(equalToConstant: screenWidth * 0.6).isActive = true
		
		price.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -screenWidth * 0.04).isActive = true
		price.topAnchor.constraint(equalTo: forest.topAnchor, constant: 20).isActive = true
		price.heightAnchor.constraint(equalToConstant: 50).isActive = true
		price.widthAnchor.constraint(equalToConstant: screenWidth * 0.4).isActive = true
		
		kecamatanKlojen.topAnchor.constraint(equalTo: camping.bottomAnchor, constant: screenHeight * 0.04).isActive = true
		kecamatanKlojen.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: screenWidth * 0.04).isActive = true
		kecamatanKlojen.heightAnchor.constraint(equalToConstant: 20).isActive = true
		kecamatanKlojen.widthAnchor.constraint(equalToConstant: screenWidth * 0.8).isActive = true
		
		
	}
	
}
