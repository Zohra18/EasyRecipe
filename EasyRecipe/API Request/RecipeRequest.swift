//
//  RecipeRequest.swift
//  EasyRecipe
//
//  Created by Zohra Achour on 25/08/2019.
//  Copyright © 2019 Zohra Achour. All rights reserved.
//

import Foundation

enum RecipeError : Error {
    case noDataAvailable
    case canNotProcessData
}

struct RecipeRequest {
    
    static func getRecipes(appID: String, apiKey:String, completionHandler: @escaping (_ result: [Recipe],_ error: Error?) -> Void) {
        
        let resourceString = "https://api.edamam.com/search?q=chicken&app_id=\(appID)&app_key=\(apiKey)"
        
        // 1. On créé la structure URL à partir de la chaine de caractère ressourceString
        guard let url = URL(string: resourceString) else { return }
        
        // 2. Création de l'objet request
        let request = URLRequest(url: url)
        
        // 3. On créé la tâche qui va executer l'appel réseau
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            // 4. On vérifie qu'il n'y a pas d'erreur
            if error != nil {
                DispatchQueue.main.async { // Correct
                    completionHandler([], error)
                }
            } else if let data = data   {
                
                do {
                    let decoder = JSONDecoder()
                    let recipeResponse = try decoder.decode(RecipeResponse.self , from: data)
                    let recipes = recipeResponse.hits?.compactMap({ $0.recipe })
                    DispatchQueue.main.async { // Correct
                        completionHandler(recipes!, nil)
                    }
                }
                catch(let error) {
                    DispatchQueue.main.async { // Correct
                        completionHandler([], error)
                    }
                }
            }
        }
        task.resume()
    }
}
