//
//  TabBarViewController.swift
//  ElectroHelp
//
//  Created by iOS Dev Lab on 10/08/23.
//

import UIKit
import CoreData

class TabBarViewController: UITabBarController {
    
    //var container: NSPersistentContainer!

    override func viewDidLoad() {
        super.viewDidLoad()
        //guard container != nil else {
        //    fatalError("This view needs a persistent container.")
        //}
        setUpViewControllers()
        
    }
    
    
    func setUpViewControllers(){
        //creating first screen
        let firstStoryboard=UIStoryboard(name: "ResistorStoryboard", bundle: .main)
        let firstViewController=firstStoryboard.instantiateViewController(withIdentifier: "ResistorVC")
        let firstNavigation = UINavigationController(rootViewController: firstViewController)
        firstNavigation.tabBarItem.title="Resistor"
        firstNavigation.tabBarItem.image=UIImage(systemName: "r.circle")
        firstNavigation.tabBarItem.selectedImage=UIImage(systemName: "r.circle.fill")
        //creating second screen
        let secondStoryboard=UIStoryboard(name: "CapacitorStoryboard", bundle: .main)
        let secondViewController=secondStoryboard.instantiateViewController(withIdentifier: "CapacitorVC")
        let secondNavigation = UINavigationController(rootViewController: secondViewController)
        secondNavigation.tabBarItem.title="Capacitor"
        secondNavigation.tabBarItem.image=UIImage(systemName: "c.circle")
        secondNavigation.tabBarItem.selectedImage=UIImage(systemName: "c.circle.fill")
        //creating third screen
        let thirdStoryboard=UIStoryboard(name: "TransistorStoryboard", bundle: .main)
        let thirdViewController=thirdStoryboard.instantiateViewController(withIdentifier: "TransistorVC")
        let thirdNavigation = UINavigationController(rootViewController: thirdViewController)
        thirdNavigation.tabBarItem.title="Transistor"
        thirdNavigation.tabBarItem.image=UIImage(systemName: "t.circle")
        thirdNavigation.tabBarItem.selectedImage=UIImage(systemName: "t.circle.fill")
        //creating screen´s array (TAB BAR)
        let homeViewController: [UIViewController]=[firstNavigation, secondNavigation, thirdNavigation]
        self.viewControllers=homeViewController
        self.selectedIndex=0
    }
}
