//
//  CollectionViewCell.swift
//  DonutsApp
//
//  Created by Cristian guillermo Romero garcia on 03/08/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    //MARK: PUTLETS
    
    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var caloriasLabel: UILabel!
    @IBOutlet weak var precioLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    
    
    //MARK: functions
    func setUP(with dona: Donut) {
        descriptionLabel.text = "Descripcion"
        titleImage.image = UIImage(named: "DonutImage")
        titleLabel.text = dona.title
        textLabel.text = dona.description
        caloriasLabel.text = dona.clories
        precioLabel.text = "\(dona.price) $"
    }

}
