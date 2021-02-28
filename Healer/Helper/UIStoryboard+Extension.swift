//
//  UIStoryboard+Extension.swift
//  Healer
//
//  Created by Sarvesh Patel on 16/02/21.
//

import Foundation
import UIKit
extension UIStoryboard {
    class func mainStoryBoard() -> UIStoryboard{
        
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    
    }
    
    class func forgotViewController() -> ForgotPasswordViewController {
        return mainStoryBoard().instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
        
    }
    class func loginViewController() -> LoginViewController {
        return mainStoryBoard().instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        
    }
    
    
 
}
