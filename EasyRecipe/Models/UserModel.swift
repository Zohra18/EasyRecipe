//
//  UserModel.swift
//  EasyRecipe
//
//  Created by Zohra Achour on 09/08/2019.
//  Copyright © 2019 Zohra Achour. All rights reserved.
//

import Foundation
import UIKit

enum UserSession {
    case activeSession, noSession
}

struct User {
    var userName : String
    var passWord : String
    var userImage : UIImage? = UIImage(named: "ProfileImage")
    var userSession : Bool = false
    var userFavoriteRecipe : [Recipe] 
    var userCreatedRecipe : [Recipe]
    var userLikes : Int = 0
    
    func createRecipe() {
        // creation de recette par utilisateur
    }
}
