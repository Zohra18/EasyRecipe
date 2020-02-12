//
//  SignUpViewController.swift
//  EasyRecipe
//
//  Created by Zohra Achour on 29/08/2019.
//  Copyright © 2019 Zohra Achour. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var newUserName: UITextField!
    @IBOutlet weak var newUserPassWord: UITextField!
    
//    userID creation
    
    var randomID = 123
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let keyboardDismiss = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(keyboardDismiss)
    
        
    }

    
    
    
    @IBAction func signUp(_ sender: Any) {
        if let userName = newUserName.text, let userPassword = newUserPassWord.text {
            userDataBase.append(User(userName: "\(userName)", passWord: "\(userPassword)", userImage: UIImage(named: "userPlaceholder"), userSession: true, userFavoriteRecipe: [Recipe](), userCreatedRecipe: [Recipe](), userLikes: 0))
            
            for user in userDataBase {
                if user.userSession == true {
                    dismiss(animated: true, completion: nil)
                }
            }
            
        }
        
    }
    
    @IBAction func returnToLogin(_ sender: Any) {
         dismiss(animated: true, completion: nil)
    }
    
    
}
