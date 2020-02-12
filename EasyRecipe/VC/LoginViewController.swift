//
//  AuthentificationViewController.swift
//  EasyRecipe
//
//  Created by Zohra Achour on 28/08/2019.
//  Copyright © 2019 Zohra Achour. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passWordField: UITextField!
    @IBOutlet weak var welcomeLabel: UILabel!

    var loginFailure = UILabel()
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameField.text = userName
        
//        dismiss keyboard
        let keyboardDismiss = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(keyboardDismiss)
        fillUserDB()
        print(userDataBase)
    }
    
    
    @IBAction func Login(_ sender: Any) {
        
        for user in userDataBase{
            guard let userName = userNameField.text, let passWord = passWordField.text else {
                return
            }
                if userName == user.userName && passWord == user.passWord {
//                    var loggedInSession = user.userSession
//                    loggedInSession = true
                    welcomeLabel.text = "Weclome back, \(user.userName)"
                    
//                    performSegue(withIdentifier: "userLoggedIn", sender: self)
                    
                    
//                    dismiss AFTER logging in
//                    dismiss(animated: true, completion: nil)
                    let recievedData = UserProfileViewController(nibName: "UserProfileViewController", bundle: nil)
                    recievedData.name = userName
//                    recievedData.userImage.image = UIImage(named: "ProfileImage")
                    
//                    navigationController?.pushViewController(recievedData, animated: true)
                    
            }
                else {
                    print("please enter correct username and password")
            }
        }
    }
    
//    SEGUE
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let recievedData = segue.destination as! UserProfileViewController
//        if let userName = userNameField.text {
//            recievedData.name = userName
//        }
        if segue.destination is UserProfileViewController {
            let receivedData = segue.destination as? UserProfileViewController
            receivedData?.name = "\(userName)"
            print(" received Name here : \(receivedData?.name)")
            print("user name : \(userName)")
        }
    }
    
    
//    @IBAction func returnToApp(_ sender: Any) {
//        dismiss(animated: true, completion: nil)
//    }
    
    
    
} // end of class Auth.
