//
//  LoginView.swift
//  Bankey
//
//  Created by Nestor Leon mendoza on 01/04/26.
//

import Foundation
import UIKit


class LoginView: UIView {
    
    let stackView = UIStackView()
    let usernameTextField = UITextField()
    let passwordTextField = UITextField()
    let dividerView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        style()
        layout()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Define el tamaño "natural" o "intrínseco" de la vista. Auto Layout usa este valor cuando NO hay constraints suficientes para determinar el tamaño (width/height) de la vista.
    //override var intrinsicContentSize: CGSize {
        // La vista tendrá un tamaño predefinido de 200x200
    //    return CGSize(width: 200, height: 200)
    //}
}

//MARK: Extension for LoginView
extension LoginView {
    
    func style() {
        // Desactiva la conversión automática del "autoresizing mask" en constraints. Necesario para usar Auto Layout por código
        // evita que iOS genere constraints implícitas que puedan entrar en conflicto con las definidas manualmente.
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .secondarySystemBackground
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8

        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        usernameTextField.placeholder = "Username"
        usernameTextField.keyboardType = .emailAddress
        // Asigna el delegado del UITextField a la instancia actual
        usernameTextField.delegate = self
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.delegate = self
        
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        dividerView.backgroundColor = .secondarySystemFill
        
        // Redondea las esquinas de la vista.
        layer.cornerRadius = 8
        // Hace que TODO lo que esté dentro de la vista (subviews) se recorte a los límites de la vista.
        clipsToBounds = true
    }
    
    
    func layout() {
        // Agrega los elementos al stackView
        stackView.addArrangedSubview(usernameTextField)
        stackView.addArrangedSubview(dividerView)
        stackView.addArrangedSubview(passwordTextField)
        // Agrega el stackView como subvista dentro de la vista actual. A partir de aquí, el textField forma parte de la interfaz
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            // Coloca el stackView debajo del top de la vista padre usando el espaciado estándar del sistema (~8pt aprox)
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            // Coloca el lado izquierdo (leading) del stackView a una distancia del lado izquierdo de la vista padre,
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            // El trailing de la vista padre queda después del trailing del stackView, dejando un espacio del sistema entre ambos.
            trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1),
            // El bottom de la vista padre queda debajo del bottom del stackView, dejando un espacio del sistema.
            bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 1)
        ])
        // Define la altura de la vista para generar la línea entre el username y el passwordTextField. Si no se coloca no se muestra
        dividerView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
}


//MARK: Extension for TextFieldDelegate
extension LoginView: UITextFieldDelegate {
    
    // Se llama cuando el usuario presiona el botón "Return" del teclado
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameTextField.endEditing(true)
        passwordTextField.endEditing(true)
        return true
    }
    
    // Se llama JUSTO ANTES de que el textField termine la edición. Sirve para decidir si se permite salir del campo
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    // Se llama DESPUÉS de que el textField ya terminó de editarse
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        
    }
    
}
