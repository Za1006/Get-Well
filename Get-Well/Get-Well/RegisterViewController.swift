//
//  RegisterViewController.swift
//  Get-Well
//
//  Created by Elizabeth Yeh on 1/6/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//


import UIKit

class RegisterViewController: UIViewController
{
    
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func userCanRegister() -> Bool
    {
        if usernameTextField.text != "" && passwordTextField.text != ""
        {
            return true
        }
        return false
    }
    
    @IBAction func createAccountTapped(sender: UIButton)
    {
        if userCanRegister()
        {
            let user = PFUser()
            user.username = usernameTextField.text!
            user.password = passwordTextField.text!
            
            user.signUpInBackgroundWithBlock {
                (succeeded: Bool, error: NSError?) -> Void in
                if !succeeded
                {
                    print(error?.localizedDescription)
                }
                else
                {
                    self.navigationController?.popToRootViewControllerAnimated(true)
                }
            }
        }
    }
    
    
}
