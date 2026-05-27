//
//  UIViewController+Utils.swift
//  Bankey
//
//  Created by Nestor Leon mendoza on 21/04/26.
//

import UIKit

extension UIViewController {
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }

    func setStatusBar(){
        // Crea un objeto de apariencia moderna (iOS 13+)
        let navBarApperance = UINavigationBarAppearance()
        // Quita efectos por defecto (blur/transparencias raras)
        navBarApperance.configureWithTransparentBackground()
        navBarApperance.backgroundColor = .secondarySystemBackground
        // Aplica esta apariencia a TODAS las navigation bars de la app (global)
        UINavigationBar.appearance().standardAppearance = navBarApperance
        // También aplica cuando haces scroll (modo grande / scrollEdge)
        UINavigationBar.appearance().scrollEdgeAppearance = navBarApperance
    }
    // Configura el ícono y título del TabBarItem de este ViewController
    func setTabBarImage(imageName: String, title: String){
        // Configuración del tamaño del ícono
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        // Crea la imagen usando SF Symbols
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        // Asigna el item al TabBar
        tabBarItem = UITabBarItem(
            title: title,  // texto debajo del ícono
            image: image,  // ícono
            tag: 0         // identificador (útil si tienes varios tabs)
        )
    }
}
