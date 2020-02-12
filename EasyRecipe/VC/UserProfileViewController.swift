//
//  UserProfileViewController.swift
//  EasyRecipe
//
//  Created by Zohra Achour on 09/08/2019.
//  Copyright © 2019 Zohra Achour. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var createdRecipeCollectionViews: UICollectionView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var commisCounter: UILabel!
    
    var name = ""
    
    var userDataBase = [User]()
    var userFavRecipes = [Recipe]()
    var userCreatedRecipes = [Recipe]()
    var commisNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
////        present
//        let presentLoginScreen = storyboard?.instantiateViewController(withIdentifier: "LoginScreen") as! LoginViewController
//        present(presentLoginScreen, animated: true, completion: nil)
        
//        collectionV.
        createdRecipeCollectionViews.dataSource = self
        fillCreatedRecipeDB()
        
//        userName.text = name
        print("my name is \(userName)")
        
//        nav
        navigationController?.setNavigationBarHidden(true, animated: true)
        navigationItem.hidesBackButton = true
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return createdRecipesDB.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "userRecipe", for: indexPath) as? CreatedRecipeCollectionViewCell {
            cell.createdRecipeImage.image = createdRecipesDB[indexPath.row].recipeImage
            cell.createdRecipeLabel.text = createdRecipesDB[indexPath.row].recipeName
            return cell
        }
        else {
            return UICollectionViewCell()
        }
    }
    
    @IBAction func commisCounter(_ sender: Any) {
        commisNumber += 1
        commisCounter.text = "\(commisNumber)"
    }
    
    
    
} // end of class UserProfileCV
