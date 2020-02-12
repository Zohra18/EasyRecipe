//
//  File.swift
//  EasyRecipe
//
//  Created by Zohra Achour on 09/08/2019.
//  Copyright © 2019 Zohra Achour. All rights reserved.
//

import Foundation

// Recipe Structs

/*struct RecipeResponse:Decodable {
    var hits : [Recipe]
}*/

/*struct RecipeModel: Decodable {
    var recipe : [RecipeDetails]
}*/

struct RecipeDetails:Decodable{
    var uri : String
    var label : String
    var image : String
    var source : String
    var url : String
    var shareAs : String
    var yield : String
    var ingredients : [RecipeIngredients]
    var ingredientLines : [IngredientSteps]
    var totalTime : Float
}

// Ingredients name + measure

struct RecipeIngredients:Decodable {
    var ingredients : [IngredientTab]
}

struct IngredientTab:Decodable {
    var text : String
    var weight : Float
}

// Ingredients steps

struct IngredientSteps:Decodable {
    var ingredientLines : [String]
}
