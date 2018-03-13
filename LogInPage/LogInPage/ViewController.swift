//
//  ViewController.swift
//  LogInPage
//
//  Created by Eunju Oh on 2018. 3. 5..
//  Copyright © 2018년 Eunju Oh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var logInLabel: UILabel!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var id: String?
    var password: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        idTextField.becomeFirstResponder()
    }

    @IBAction func logInButton(_ sender: UIButton) {
        //logInLabel.text = "LogIn Success"
        
        //id = idTextField.text
        //password = passwordTextField.text
        
        //print(id)
        //print(password)
        
//        if idTextField.text != ""{
//            performSegue(withIdentifier: "logInButton", sender: self)
//        }
        
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let userName = segue.destination as! LoginSuccessController
//        userName.blank = idTextField.text!
//    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

}

