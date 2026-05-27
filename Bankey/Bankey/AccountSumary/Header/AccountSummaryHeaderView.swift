//
//  HomeView.swift
//  Bankey
//
//  Created by Nestor Leon mendoza on 20/04/26.
//
import Foundation
import UIKit


class AccountSummaryHeaderView: UIView{
    
    @IBOutlet var contentView: UIView!
    // Inicializador cuando la vista se crea por código (programáticamente)
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    // Inicializador requerido cuando la vista se carga desde un Storyboard o XIB
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // Se reutiliza la misma configuración
        commonInit()
    }
    // Define el tamaño "intrínseco" de la vista (usado por Auto Layout)
    override var intrinsicContentSize: CGSize {
        return CGSize(
            width: UIView.noIntrinsicMetric, // El ancho no está definido aquí (lo define el layout externo)
            height: 144                      // Altura fija de 144 puntos
        )
    }
    // Método privado para centralizar toda la configuración inicial de la vista
    private func commonInit() {
        // Obtiene el bundle donde está esta clase
        let bundle = Bundle(for: AccountSummaryHeaderView.self)
        // Carga el archivo XIB llamado "AccountSummaryHeaderView" y asigna sus outlets a 'self'
        bundle.loadNibNamed("AccountSummaryHeaderView", owner: self, options: nil)
        // Agrega la vista raíz del XIB (contentView) como subvista
        addSubview(contentView)
        contentView.backgroundColor = .secondarySystemBackground
        // Desactiva autoresizing masks para usar Auto Layout
        contentView.translatesAutoresizingMaskIntoConstraints = false
        // Fija contentView a los bordes de la vista principal, hace que el XIB ocupe todo el espacio del componente
        contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
}

