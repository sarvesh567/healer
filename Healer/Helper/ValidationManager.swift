//
//  ValidationManager.swift
//  Healer
//
//  Created by Sarvesh Patel on 16/02/21.
//

import Foundation
import  UIKit

extension String{
    
    //MARK:- ValidationForPhoneNumber
    var isValidPhoneNumber: Bool{
        
        do{
            
            let detector = try NSDataDetector(types: NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
            let matches = detector.matches(in: self, options: [], range: NSMakeRange(0, self.count))
            
            if let res =  matches.first{
                return res.resultType == .phoneNumber && res.range.location == 0 && res.range.length == self.count && self.count == 10
            }else{
                
                return false
            }
            
        }catch{
            
            
            return false
        }
        
    }
    
    //MARK:- Validation For Email
    var isValidEmail: Bool{
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        let emailText  = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailText.evaluate(with: self)
    }
    
    //MARK:- Validation For Password
    var isValidPassword: Bool{
        
        let testPassword = NSPredicate(format: "SELF MATCHES %@", "^[A-Za-z\\d$@$#!%*?&]{8,}")
        //for letter (?=.*[a-zA-Z])
        //for special character (?=.*[$@$#!%*?&])
        return testPassword.evaluate(with: self)
    }
    
    
}

