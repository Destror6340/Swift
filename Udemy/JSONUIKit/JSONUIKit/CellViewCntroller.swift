//
//  CellViewController.swift
//  JSONUIKit
//
//  Created by Nestor Leon mendoza on 23/02/26.
//

import UIKit

class CellViewController: UITableViewCell {


    @IBOutlet weak var profilePhoto: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCell()
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        profilePhoto.image = UIImage(systemName: "person.circle")
    }
    
    
    func configure(with user: User) {
        nameLabel.text = "\(user.firstName) \(user.lastName)"
        emailLabel.text = user.email
        profilePhoto.image = UIImage(systemName: "person.circle") // placeholder

        guard let url = URL(string: user.image) else { return }

        URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard
                let self = self,
                let data = data,
                let image = UIImage(data: data)
            else { return }

            DispatchQueue.main.async {
                self.profilePhoto.image = image
            }
        }.resume()
    }
    
    
    private func setUpCell(){
        profilePhoto.layer.cornerRadius = profilePhoto.bounds.height / 2
        //nameLabel.
    }
    

}

