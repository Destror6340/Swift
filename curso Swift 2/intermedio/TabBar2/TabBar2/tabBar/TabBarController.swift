//
//  TabBarController.swift
//  TabBar2
//
//  Created by Alumno on 03/08/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUPtabBar()
    }
    

    //MARK: FUNCTIONS
    private func setUPtabBar() {
        //Creating/instanciating first view
        let firstStoryboard = UIStoryboard(name: "Main", bundle: .main)     //Main is the storyboard asociated
        let firstViewController = firstStoryboard.instantiateViewController(withIdentifier: "FirstVC")//Viewcontroller from storyboard
        let firstNavigation = UINavigationController(rootViewController: firstViewController)//navigation
        firstNavigation.tabBarItem.title = "Inicio"
        firstNavigation.tabBarItem.image = UIImage(systemName: "a.circle")
        firstNavigation.tabBarItem.selectedImage = UIImage(systemName: "a.circle.fill")
        
        //Creating/instanciating second view
        let secondStoryboard = UIStoryboard(name: "secondStoryboard", bundle: .main)     //secondStoryboard is the storyboard asociated
        let secondViewController = secondStoryboard.instantiateViewController(withIdentifier: "SecondVC")//Viewcontroller from storyboard
        let secondNavigation = UINavigationController(rootViewController: secondViewController)//navigation from viewcontroller
        secondNavigation.tabBarItem.title = "Meta"
        secondNavigation.tabBarItem.image = UIImage(systemName: "b.circle")
        secondNavigation.tabBarItem.selectedImage = UIImage(systemName: "b.circle.fill")
        
        //Creating/instanciating third view
        let thirdStoryboard = UIStoryboard(name: "thirdStoryboard", bundle: .main)     //thirdStoryboard is the storyboard asociated
        let thirdViewController = thirdStoryboard.instantiateViewController(withIdentifier: "ThirdVC")//Viewcontroller from storyboard
        let thirdNavigation = UINavigationController(rootViewController: thirdViewController)//navigation
        thirdNavigation.tabBarItem.title = "Perfil"
        thirdNavigation.tabBarItem.image = UIImage(systemName: "c.circle")
        thirdNavigation.tabBarItem.selectedImage = UIImage(systemName: "c.circle.fill")
        
        let homeViewController: [UIViewController] = [firstNavigation, secondNavigation, thirdNavigation]
        self.viewControllers = homeViewController
        self.selectedIndex = 0
    }
}
