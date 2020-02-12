//
//  FavoriteViewController.swift
//  EasyRecipe
//
//  Created by Zohra Achour on 22/08/2019.
//  Copyright © 2019 Zohra Achour. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController, UITableViewDataSource {
    
    

    @IBOutlet weak var favoriteTableView: UITableView!
    
    var favoriteList = [Recipe]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteTableView.dataSource = self
        fillCreatedRecipeDB()
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "favRecipeID", for: indexPath) as? FavoritesTableViewCell {
//            cell.textLabel?.text = "RandomShit"
//            cell.detailTextLabel?.text = "RandomShitTheReturn"
//            cell.recipeLabel.text = "Recipe"
                cell.favoritesLabel.text = createdRecipesDB[indexPath.row].recipeName
                cell.favoritesImage.image = createdRecipesDB[indexPath.row].recipeImage
            return cell
        }
        else {
            return UITableViewCell()
        }

    }
    
//    SEGUE
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let recievedData = segue.destination as! RecipeViewController
//        recievedData.recipeCardLabel = createdRecipesDB
//        recievedData.lastName = self.userSurnameTest
    }
}
