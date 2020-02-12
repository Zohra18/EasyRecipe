//
//  RecipeTableViewCell.swift
//  EasyRecipe
//
//  Created by Zohra Achour on 09/08/2019.
//  Copyright © 2019 Zohra Achour. All rights reserved.
//

import UIKit

class RecipeTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeLabel: UILabel!
    @IBOutlet weak var recipeDescription: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//    }
    
//    func update(with recipe: Recipe) {
//        self.recipeLabel.text = recipe.label
//        if let recipeYields = recipe.yield, let recipeTime = recipe.totalTime {
//            if recipeTime == 0 {
//                self.recipeDescription.text = """
//                No timer was added
//                \(recipeYields) serving
//                """
//            }
//            else {
//                self.recipeDescription.text = """
//                \(recipeTime) minutes
//                \(recipeYields) serving
//                """
//            }
//        }
//
//        if let imageUrl = recipe.image, let url = URL(string: imageUrl) {
//
//            do {
//
//                let data = try Data(contentsOf: url, options: .mappedIfSafe)
//                DispatchQueue.main.async {
//                    self.recipeImage.image = UIImage(data: data)
//                }
//            } catch {
//                print("Error")
//            }
//
//        }
//    }

}
