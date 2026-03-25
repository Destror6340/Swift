//  ViewController.swift
//  scrollViews
//  Created by Nestor on 28/06/23.

import UIKit

class ViewController: UIViewController {
    //MARK: start outlets
    @IBOutlet weak var scrollViewrobe: UIScrollView!
    
    @IBOutlet weak var stackView1: UIStackView!
    //MARK: start outlets
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpUI()
    }
    //MARK: start functions
    func setUpUI(){
        // Configurar el tamaño del contenido dentro del UIScrollView
        scrollViewrobe.contentSize = CGSize(width: 500, height: 500)
        // Desplazar a una ubicación específica dentro del UIScrollView
        let contentOffset = CGPoint(x: 200, y: 200)
        scrollViewrobe.setContentOffset(contentOffset, animated: true)
        // Hacer zoom en el contenido dentro del UIScrollView
        let _: CGFloat = 2.0
        scrollViewrobe.zoom(to: CGRect(x: 100, y: 100, width: 200, height: 200), animated: true)
        // Habilitar o deshabilitar el desplazamiento del UIScrollView
        scrollViewrobe.isScrollEnabled = true
        // Habilitar el desplazamiento de página en el UIScrollView
        scrollViewrobe.isPagingEnabled = true
        // Mostrar los indicadores de desplazamiento vertical y horizontal
        scrollViewrobe.showsVerticalScrollIndicator = true
        scrollViewrobe.showsHorizontalScrollIndicator = true
    }
    
    
    //MARK: end functions
    //MARK: start actions
    @IBOutlet weak var scrollViewActions: UIScrollView!
    @IBOutlet weak var scrollViewAction1: UIStackView!
    
    
    //MARK: end actions

}

