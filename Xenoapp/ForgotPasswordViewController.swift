//
//  ForgotPasswordViewController.swift
//  Xenoapp
//
//  Created by Abhishek Sansanwal on 17/07/18.
//  Copyright © 2018 Abhishek Sansanwal. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var userIDTextField: UITextField!
    
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var forgotPasswordLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sendButton.titleLabel?.font = sendButton.titleLabel?.font.withSize(UIScreen.main.bounds.height/49.06)
        forgotPasswordLabel.font = forgotPasswordLabel.font.withSize(UIScreen.main.bounds.height/19.89)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Dismissing the keyboard.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == userIDTextField {
            
            textField.resignFirstResponder()
            
        }
      return true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
