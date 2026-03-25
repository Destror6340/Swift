//
//  descriptionViewController.swift
//  TabBar2
//
//  Created by Esteban Federico León Mendoza on 09/08/23.
//

import UIKit

class descriptionViewController: UIViewController {

    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the vie
        setUP()
    }


    private func setUP() {
        
        textView.text = "Una app de control de gastos es una herramienta para gestionar tus finanzas personales. Permite registrar y clasificar ingresos y gastos en categorías, establecer presupuestos y recibir alertas. Proporciona gráficos e informes para analizar patrones de gastos y mejorar la planificación financiera. También ayuda a identificar áreas de ahorro y reducir deudas. La seguridad de los datos financieros es prioritaria en estas aplicaciones. Accesible desde dispositivos móviles y computadoras, brindando flexibilidad en la gestión financiera. Es una forma eficiente de tomar decisiones informadas sobre el dinero. A través de la app, se pueden establecer metas financieras y recibir recomendaciones para mejorar la salud financiera. En general, estas apps ofrecen una visión clara y organizada de tus finanzas, lo que facilita el control y logro de objetivos económicos."
        textView.isEditable = false
        textView.backgroundColor = .lightGray
        textView.font = UIFont(name: "systemFont", size: 18)
    }

}
