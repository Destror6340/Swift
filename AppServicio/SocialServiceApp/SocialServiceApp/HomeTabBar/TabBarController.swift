
//  TabBarController.swift
//  SocialServiceApp
//
//  Created by alumno on 15/02/23.
//
import UIKit

class TabBarController: UITabBarController {
    //MARK: start outlets
    
    
    //MARK: end outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpViewControllers()
    }
    
    //MARK: logic functions
    func setUpViewControllers(){
        let scheduleStoryboard=UIStoryboard(name: "ScheduleStoryboard", bundle: .main)
        let scheduleViewController=scheduleStoryboard.instantiateViewController(withIdentifier: "ScheduleVC")
        let scheduleNavigation = UINavigationController(rootViewController: scheduleViewController)
        scheduleNavigation.tabBarItem.title="Schedule"
        scheduleNavigation.tabBarItem.image=UIImage(systemName: "s.circle")
        scheduleNavigation.tabBarItem.selectedImage=UIImage(systemName: "s.circle.fill")
        
        let ResistorStoryboard=UIStoryboard(name: "ResistorStoryboard", bundle: .main)
        let ResitorViewController=ResistorStoryboard.instantiateViewController(withIdentifier: "ResistorVC")
        let ResitorNavigation = UINavigationController(rootViewController: ResitorViewController)
        ResitorNavigation.tabBarItem.title="Resistor"
        ResitorNavigation.tabBarItem.image=UIImage(systemName: "r.circle")
        ResitorNavigation.tabBarItem.selectedImage=UIImage(systemName: "r.circle.fill")
        
        let homeViewController: [UIViewController]=[scheduleNavigation, ResistorNavigation]
        self.viewControllers=homeViewController
        self.selectedIndex=0
        
        view.backgroundColor = .systemPurple
        
    }
    
    //MARK: end logic functions
    //MARK: start actions
    
    
    //MARK: end actions
}
