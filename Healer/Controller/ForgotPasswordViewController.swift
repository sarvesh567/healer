//
//  ForgotPasswordViewController.swift
//  Healer
//
//  Created by Sarvesh Patel on 19/02/21.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    //MARK:- IBOutlet for textField
    @IBOutlet weak var txtMobile: UITextField!
    
    var forgotPasswordViewModel = ForgotPasswordViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        CustomLoader.shareInstance.showLoaderView()
        
    }
    
    
    

    @IBAction func nextBtnPressed(_ sender: Any) {
        
        UserDefaults.standard.setValue(txtMobile.text, forKey: "mobileNumber")
          
    }
    
    @IBAction func backToLoginBtnPressed(_ sender: Any) {
        
        let loginVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.present(loginVC, animated: true, completion: nil)
        
        
    }
    
}
