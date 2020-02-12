//
//  UserDataBase.swift
//  EasyRecipe
//
//  Created by Zohra Achour on 29/08/2019.
//  Copyright © 2019 Zohra Achour. All rights reserved.
//

import Foundation
import UIKit

var userDataBase = [User]()

func fillUserDB() {
    userDataBase.append(User(userName: "marry", passWord: "cooking123", userImage: UIImage(named: "ProfileImage"), userSession: false, userFavoriteRecipe: [Recipe](), userCreatedRecipe: [Recipe](), userLikes: 0))
    userDataBase.append(User(userName: "marry", passWord: "cooking123", userImage: UIImage(named: "ProfileImage"), userSession: false, userFavoriteRecipe: [Recipe](), userCreatedRecipe: [Recipe](), userLikes: 0))
    userDataBase.append(User(userName: "marry", passWord: "cooking123", userImage: UIImage(named: "ProfileImage"), userSession: false, userFavoriteRecipe: [Recipe](), userCreatedRecipe: [Recipe](), userLikes: 0))
    userDataBase.append(User(userName: "marry", passWord: "cooking123", userImage: UIImage(named: "ProfileImage"), userSession: false, userFavoriteRecipe: [Recipe](), userCreatedRecipe: [Recipe](), userLikes: 0))
}
