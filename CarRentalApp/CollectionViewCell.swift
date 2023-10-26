//
//  CollectionViewCell.swift
//  CarRentalApp
//
//  Created by Zohra Guliyeva on 10/25/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var view: UIView!
    
    @IBOutlet weak var image: UIImageView!
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var labelNumber: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
