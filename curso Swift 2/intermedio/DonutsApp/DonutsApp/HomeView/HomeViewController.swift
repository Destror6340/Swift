//
//  HomeViewController.swift
//  DonutsApp
//
//  Created by Cristian guillermo Romero garcia on 03/08/23.

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    private let dona = [Donut(title: "Chocolate", description: "Rica dona con cobertura sabor chocolate", clories: "850", price: 20.5), Donut(title: "Glaseada", description: "Rica dona con cobertura sabor chocolate", clories: "850", price: 20.5), Donut(title: "brownie", description: "Rica dona con cobertura sabor chocolate", clories: "850", price: 20.5), Donut(title: "Fresa", description: "Rica dona con cobertura sabor chocolate", clories: "850", price: 20.5), Donut(title: "Vainilla", description: "Rica dona con cobertura sabor chocolate", clories: "850", price: 20.5), Donut(title: "Cafe", description: "Rica dona con cobertura sabor chocolate", clories: "850", price: 20.5)]

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: .main),forCellWithReuseIdentifier: "DonutCell")
        collectionView.setCollectionViewLayout(generateLayout(), animated: true)
        collectionView.dataSource = self
        
    }
    
    func generateLayout() -> UICollectionViewLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.5))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, repeatingSubitem: item, count: 1)
        let spacing: CGFloat = 10
        group.contentInsets = NSDirectionalEdgeInsets(top: spacing, leading: spacing, bottom: 0, trailing: spacing)
        let section = NSCollectionLayoutSection(group: group)
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }

}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dona.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeVC", for: indexPath) as? CollectionViewCell{
            let donut = dona[indexPath.item]
            cell.setUP(with: donut)
            return cell
        }
        return UICollectionViewCell()
    }
    
    
}
