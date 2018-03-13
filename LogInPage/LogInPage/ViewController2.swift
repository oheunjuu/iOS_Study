//
//  ViewController2.swift
//  LogInPage
//
//  Created by Eunju Oh on 2018. 3. 13..
//  Copyright © 2018년 Eunju Oh. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var joinImageView: UIImageView!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func joinImageFromLibrary(_ sender: UITapGestureRecognizer) {
            
            let imagePickerController =  UIImagePickerController()
            imagePickerController.sourceType = .photoLibrary
            imagePickerController.delegate = self
            present(imagePickerController, animated: true, completion: nil)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() //왜 안내려갈까요...쥬륵
        return true
    }
}


extension ViewController2: UIImagePickerControllerDelegate{
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            return
        }
        
        
        joinImageView.image = selectedImage
        dismiss(animated: true, completion: nil)
    }
    
}

extension ViewController2: UINavigationControllerDelegate{
    
}
