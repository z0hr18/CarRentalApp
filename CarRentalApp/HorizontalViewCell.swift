//
//  HorizontalViewCell.swift
//  CarRentalApp
//
//  Created by Zohra Guliyeva on 10/28/23.
//

import UIKit

class HorizontalViewCell: UICollectionViewCell {

    @IBOutlet weak var carName: UILabel!
    
    @IBOutlet weak var modelName: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var engineLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
