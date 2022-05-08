//
//  MainTabBarController.swift
//  Homework_3_UI_programmatically
//
//  Created by Maciej Lipiec on 2022-05-08.
//

import UIKit

class MainTabBarController: UITabBarController {
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
		setupTabBar()
		tabBar.tintColor = UIColor.black
	}
	
	func setupTabBar(){
		
		let view1 = UINavigationController(rootViewController: ViewController())
		view1.tabBarItem.image = UIImage(systemName: "house",
										 withConfiguration: UIImage.SymbolConfiguration(pointSize: 16, weight: .bold, scale: .large ))?.withTintColor(.gray, renderingMode: .alwaysOriginal)
		view1.tabBarItem.selectedImage = UIImage(systemName: "house",
										 withConfiguration: UIImage.SymbolConfiguration(pointSize: 16, weight: .bold, scale: .large ))?.withTintColor(.black, renderingMode: .alwaysOriginal)
		
		let view2 = UINavigationController(rootViewController: ViewController())
		view2.tabBarItem.image = UIImage(systemName: "waveform.path.ecg")
		
	}
}
