//
//  fakeRecipeDataBase.swift
//  EasyRecipe
//
//  Created by Zohra Achour on 29/08/2019.
//  Copyright © 2019 Zohra Achour. All rights reserved.
//

import Foundation
import UIKit

var createdRecipesDB = [CreatedRecipe]()
func fillCreatedRecipeDB() {
    createdRecipesDB.append(CreatedRecipe(recipeImage: UIImage(named: "eggsVeggie")!, recipeName: "Eggs'N'Veggies"))
    createdRecipesDB.append(CreatedRecipe(recipeImage: UIImage(named: "pizza")!, recipeName: "Chorizo Pizza"))
    createdRecipesDB.append(CreatedRecipe(recipeImage: UIImage(named: "pancake")!, recipeName: "Pancake"))
    
}

var recipeDB = [SelectedRecipe]()
func fillRecipeDB() {
    recipeDB.append(SelectedRecipe(selectedRecipeName: "Avocado Toast", selectedRecipeImage: UIImage(named: "avocadoToast")!, selectedRecipeDifficulty: 1, selectedRecipeCost: 8, selectedRecipeSteps: "", selectedRecipeFavorite: false))
    recipeDB.append(SelectedRecipe(selectedRecipeName: "Shrimp Ramen", selectedRecipeImage: UIImage(named: "shrimpRamen")!, selectedRecipeDifficulty: 1, selectedRecipeCost: 8, selectedRecipeSteps: "", selectedRecipeFavorite: false))
    recipeDB.append(SelectedRecipe(selectedRecipeName: "Paella", selectedRecipeImage: UIImage(named: "paella")!, selectedRecipeDifficulty: 1, selectedRecipeCost: 8, selectedRecipeSteps: "", selectedRecipeFavorite: false))
    recipeDB.append(SelectedRecipe(selectedRecipeName: "Macarons", selectedRecipeImage: UIImage(named: "macarons")!, selectedRecipeDifficulty: 1, selectedRecipeCost: 8, selectedRecipeSteps: "", selectedRecipeFavorite: false))
    recipeDB.append(SelectedRecipe(selectedRecipeName: "Cookies", selectedRecipeImage: UIImage(named: "cookies")!, selectedRecipeDifficulty: 1, selectedRecipeCost: 8, selectedRecipeSteps: "", selectedRecipeFavorite: false))
    
}
