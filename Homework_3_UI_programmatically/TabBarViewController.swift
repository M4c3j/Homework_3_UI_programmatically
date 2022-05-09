//
//  TabBarViewController.swift
//  Homework_3_UI_programmatically
//
//  Created by Maciej Lipiec on 2022-05-09.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

		view.backgroundColor = .white
		UITabBar.appearance().barTintColor = .gray
		tabBar.tintColor = .black
		
		setupVCs()
    }
    
	func setupVCs() {
		viewControllers = [
			createNavController(for: ViewController(), image: UIImage(systemName: "house")!),
			createNavController(for: ViewController(), image: UIImage(systemName: "waveform.path.ecg")!),
			createNavController(for: ViewController(), image: UIImage(systemName: "magnifyingglass")!),
			createNavController(for: ViewController(), image: UIImage(systemName: "gear")!)
		]
	}

	func createNavController(for rootViewController: UIViewController, image: UIImage) -> UIViewController {
		let navController = UINavigationController(rootViewController: rootViewController)
		navController.tabBarItem.image = image
		navController.isNavigationBarHidden = true
		return navController
	}
	
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
