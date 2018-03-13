//
//  LoginSuccessController.swift
//  LogInPage
//
//  Created by Eunju Oh on 2018. 3. 13..
//  Copyright © 2018년 Eunju Oh. All rights reserved.
//

import UIKit

class LoginSuccessController: UIViewController {

    @IBOutlet weak var idConfirmTextField: UILabel!
    
    var blank = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        idConfirmTextField.text = blank
    }

}
