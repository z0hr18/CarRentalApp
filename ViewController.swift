//
//  ViewController.swift
//  CarRentalApp
//
//  Created by Zohra Guliyeva on 10/25/23.
//

import UIKit
import RealmSwift

class VehiclesDatas: Object {
    @Persisted var name: String = ""
    @Persisted var model: String = ""
    @Persisted var price: String = ""
    @Persisted var engine: String = ""
    @Persisted var category: String = CarCategory.standard.rawValue
}

enum CarCategory: String {
    case standard = "Standard"
    case prestige = "Prestige"
    case suv = "SUV"
}

class ViewController: UIViewController {
    
    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var carImage: UIImageView!
    
    @IBOutlet weak var carCategory: UILabel!
    
    @IBOutlet weak var categoryCount: UILabel!
    
    @IBOutlet weak var changedColor: UIView!
    
    @IBOutlet weak var headerCell: UICollectionViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collection.delegate = self
        collection.dataSource = self
        collection.register(UINib(nibName: "HorizontalViewCell", bundle: .main), forCellWithReuseIdentifier: "HorizontalViewCell")
        }

    @IBAction func searchBar(_ sender: UITextField) {
    }
    
//    var items = [1, 2,3, 4, 5]
    
    func configureUI() {
        collection.register(UINib(nibName: "\(CarHeaderView.self)", bundle: nil),
                            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                            withReuseIdentifier: "\(CarHeaderView.self)")
    }
}
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    //cell configuration
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HorizontalViewCell", for: indexPath) as! HorizontalViewCell
        cell.layer.cornerRadius = 35
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        .init(width: collectionView.frame.width * 0.855, height: 355)
    }
    
    //header or footer configuration
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "\(CarHeaderView.self)", for: indexPath) as! CarHeaderView
        return header
    }
}
