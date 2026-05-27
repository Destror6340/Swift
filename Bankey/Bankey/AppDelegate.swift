//
//  AppDelegate.swift
//  Bankey
//
//  Created by Nestor Leon mendoza on 26/03/26.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // Referencia a la ventana principal de la app
    var window: UIWindow?
    
    let loginViewController = LoginViewController()
    let onboardingViewController = OnboardingContainerViewController()
    let homeViewController = AccountSummaryViewController()
    let mainViewController = MainViewController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions lainchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool{
        // Obtiene la escena activa de la app. UIWindow necesita estar asociada a una UIWindowScene.
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            loginViewController.delegate = self
            onboardingViewController.delegate = self
            // Crea la ventana principal asociada a esa escena.
            window = UIWindow(windowScene: windowScene)
            // "key": la principal que recibe eventos (touch, teclado) "visible": que se muestre en pantalla
            window?.makeKeyAndVisible()
            window?.backgroundColor = .systemBackground
            // Define el primer ViewController que verá el usuario. Es la "pantalla inicial"
            //window?.rootViewController = loginViewController
            window?.rootViewController = mainViewController
        }
        
        return true
        
    }

}

extension AppDelegate: OnboardingViewControllerDelegate {
    func onboardingDidFinish() {
        LocalState.hasOnboarded = true
        window?.rootViewController = mainViewController
        window?.makeKeyAndVisible()
        UIView.transition(with: window!, duration: 0.5, options: .transitionCrossDissolve, animations: nil, completion: nil)
        print("going to login")
    }
}

extension AppDelegate: LoginViewControllerDelegate {
    func didLogin() {
        if LocalState.hasOnboarded {
            window?.rootViewController = mainViewController
            window?.makeKeyAndVisible()
            UIView.transition(with: window!, duration: 0.5, options: .transitionCrossDissolve, animations: nil, completion: nil)
            print("did Login")
        }else{
            window?.rootViewController = onboardingViewController
            window?.makeKeyAndVisible()
            UIView.transition(with: window!, duration: 0.5, options: .transitionCrossDissolve, animations: nil, completion: nil)
            print("did Login")
        }
        
    }
    
    func loginDidFinish() {
        print("login did finished")
    }
}

/*extension AppDelegate: AccountSumaryViewControllerDelegate {
    func didLogout() {
        window?.rootViewController = loginViewController
        window?.makeKeyAndVisible()
        UIView.transition(with: window!, duration: 0.5, options: .transitionCrossDissolve, animations: nil, completion: nil)
    }
}*/
