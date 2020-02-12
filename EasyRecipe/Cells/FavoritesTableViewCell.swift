//
//  FavoritesTableViewCell.swift
//  EasyRecipe
//
//  Created by Zohra Achour on 31/08/2019.
//  Copyright © 2019 Zohra Achour. All rights reserved.
//

import UIKit

class FavoritesTableViewCell: UITableViewCell {

    @IBOutlet weak var favoritesLabel: UILabel!
    @IBOutlet weak var favoritesDescriptionLabel: UILabel!
    
    @IBOutlet weak var favoritesImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
