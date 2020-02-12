//
//  ViewController.swift
//  EasyRecipe
//
//  Created by Zohra Achour on 05/08/2019.
//  Copyright © 2019 Zohra Achour. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
//    var recipesList = [Recipe]()
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchRecipeTableView: UITableView!
    var recipeNameToSend = ""
    
    
    //    var recipesList = [RecipeResponse]() {
    //        didSet {
    //            DispatchQueue.main.async {
    //                self.searchRecipeTableView.reloadData()
    //                self.navigationItem.title = "\(self.recipesList.count) Recipes found!"
    //            }
    //        }
    //    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillRecipeDB()
        //        let resourceURL : URL
        //        let API_KEY = "bc05bf10924dc64cd2c539ced0d073df"
        //        let APP_ID = "65dc503f"
        
        // DataSource & Delegate
        searchRecipeTableView.dataSource = self
        searchRecipeTableView.delegate = self
        //        searchBar.delegate = self
        
        //        RecipeRequest.getRecipes(appID: APP_ID, apiKey: API_KEY) { (recipes, error) in
        //            if error != nil {
        //                print(error?.localizedDescription ?? "No value")
        //            }
        //            else {
        //                self.recipesList = recipes
        //                self.searchRecipeTableView.reloadData()
        //                print()
        //            }
        //        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //        return self.recipesList.count  API
        return recipeDB.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "recipeID", for: indexPath) as? RecipeTableViewCell {
            //            let recipe = recipesList[indexPath.row]  API
            let recipe = recipeDB[indexPath.row]
            //            cell.update(with: recipe)

            //            recipeNameToSend = recipe.label
            cell.recipeImage.image = recipe.selectedRecipeImage
            cell.recipeLabel.text = recipe.selectedRecipeName
            return cell

        }
        else {
            return UITableViewCell()

        }
    }

            func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                let vc = storyboard?.instantiateViewController(withIdentifier: "RecipeViewController") as? RecipeViewController
                self.navigationController?.pushViewController(vc!, animated: true)
//                if let recipeLabel = recipeDB[indexPath.row].selectedRecipeName, let recipeImage = recipeDB[indexPath.row].selectedRecipeImage {
//                    recipeNameToSend = recipeLabel
                vc?.recipeName = recipeDB[indexPath.row].selectedRecipeName
                vc?.recipeImage = recipeDB[indexPath.row].selectedRecipeImage
//                }
//                if let recipeLabel = recipesList[indexPath.row].label, let recipeYield = recipesList[indexPath.row].yield, let recipeIngredientLines = recipesList[indexPath.row].ingredientLines, let recipeIngrediends = recipesList[indexPath.row].ingredients {
//                    recipeNameToSend = recipeLabel
//                    vc?.recipeName = recipeNameToSend
//                    vc?.recipeYields = "\(recipeYield)"
//                    for ingredients in recipeIngredientLines {
//    //                    vc?.ingredientLinesLabel.text = ingredients
//                        vc?.recipeIngrdLinesRecieved.append(ingredients)
//
//                    }
//    //                for (key, value) in recipeIngrediends.enumerated() {
//    //                    vc?.recipeIngrdRecieved.map({ ((key: String, value: Any)) -> T in
//    //                        <#code#>
//    //                    })
//    //                }
//    //                vc?.recipeIngrdRecieved.append(recipeIngredientLines)
//                }
    
            }
    
} // END OF CLASS SearchViewController






//extension SearchViewController : UISearchBarDelegate {
//    func searchBarButtonTapped(_ searchBar: UISearchBar) {
//        guard let searchBarText = searchBar.text else { return print("no text found") }
//        let recipeRequest = RecipeRequest(recipeTest: searchBarText)
//        recipeRequest.getRecipe { [weak self] result in
//            switch result {
//            case .failure(let error):
//                print("WE DO WRONG TINGSSSSS")
//                print(error)
//            case .success(let recipes):
//                self?.recipesList = recipes
//                print("search was succesful, we did a mistake somewhere in the parsin")
//            }
//        }
//    }
//}
