//
//  HomeTabBarController.swift
//  TabBarHome
//
//  Created by alumno on 02/02/23.
//

import UIKit

class HomeTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpViewControllers()
    }
    
    func setUpViewControllers(){
        let firstStoryboard=UIStoryboard(name: "FirstViewStoryboard", bundle: .main)
        let firstViewController=firstStoryboard.instantiateViewController(withIdentifier: "FirstVC")
        let firstNavigation = UINavigationController(rootViewController: firstViewController)
        firstNavigation.tabBarItem.title="first"
        firstNavigation.tabBarItem.image=UIImage(systemName: "a.circle")
        firstNavigation.tabBarItem.selectedImage=UIImage(systemName: "a.circle.fill")
        
        let secondStoryboard=UIStoryboard(name: "SecondViewStoryboard", bundle: .main)
        let secondViewController=secondStoryboard.instantiateViewController(withIdentifier: "SecondVC")
        let secondNavigation = UINavigationController(rootViewController: secondViewController)
        secondNavigation.tabBarItem.title="second"
        secondNavigation.tabBarItem.image=UIImage(systemName: "a.circle")
        secondNavigation.tabBarItem.selectedImage=UIImage(systemName: "a.circle.fill")
        
        let thirdStoryboard=UIStoryboard(name: "ThirdViewStoryboard", bundle: .main)
        let thirdViewController=thirdStoryboard.instantiateViewController(withIdentifier: "ThirdVC")
        let thirdNavigation = UINavigationController(rootViewController: thirdViewController)
        thirdNavigation.tabBarItem.title="third"
        thirdNavigation.tabBarItem.image=UIImage(systemName: "a.circle")
        thirdNavigation.tabBarItem.selectedImage=UIImage(systemName: "a.circle.fill")
        
        
        let homeViewController: [UIViewController]=[firstNavigation, secondNavigation, thirdNavigation]
        self.viewControllers=homeViewController
        self.selectedIndex=1
    }

}
