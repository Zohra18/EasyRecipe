//
//  RecipeViewController.swift
//  EasyRecipe
//
//  Created by Zohra Achour on 22/08/2019.
//  Copyright © 2019 Zohra Achour. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {
    
    @IBOutlet weak var recipeCardLabel: UILabel!
    @IBOutlet weak var recipeCardImage: UIImageView!
    @IBOutlet weak var recipeCardYieldLabel: UILabel!
    @IBOutlet weak var recipeIngridientsTextView: UITextView!
    @IBOutlet weak var ingredientLinesLabel: UILabel!
    @IBOutlet weak var recipeStepsTextView: UITextView!
    
    var recipeName = ""
    var recipeImage : UIImage!
    var recipeYields = ""
    var recipeIngrdLinesRecieved = [String]()
    var recipeIngrdRecieved = [String:Any]()
  
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipeCardLabel.text = "\(recipeName)"
        recipeCardImage.image = recipeImage
        recipeCardYieldLabel.text = "Yields \(recipeYields) servings"
//        ingredientLinesLabel.text = "\(recipeIngrdLinesRecieved)"
//        for ingrds in recipeIngrdLinesRecieved {
//            print(ingrds)
////            ingredientLinesLabel.text = ingrds
//
//        }

//        recipeIngridientsTextView.text = """
//            \(recipeIngrTextView)
//        """
//        ingredientLinesLabel.text = "\(recipeIngrdRecieved)"
        
        navigationController?.setNavigationBarHidden(false, animated: false)
        
        
        
//        Placeholder en attendant les données API
//        recipeIngridientsTextView.text = 

    }
    
    
    

}
