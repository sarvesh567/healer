//
//  LoginViewModel.swift
//  Healer
//
//  Created by Sarvesh Patel on 17/02/21.
//

import Foundation
import UIKit
import SwiftyJSON




extension LoginViewController {
    //MARK:- Action for loginButton
    func loginAPI() {
        guard let employeeId = employeeTextField.text, let password = passwordTextField.text
        else{
            return
        }
        if employeeTextField.text == ""{
            
        }else if Reachability.isConnectedToNetwork(){
            CustomLoader.shareInstance.showLoaderView()
            let param1 : [String : String] = [
                "emp_id": employeeId ,
                "password": password
            ]
            print(param1)
            
            ServerClass.sharedInstance.postRequestWithUrlParameters(param1, path:BASE_URL + PROJECT_URL.LOGIN_API) { (json) in
                print(json)
                CustomLoader.shareInstance.hideLoaderView()
                
                let status = json["status"].stringValue
                let data = json["data"]
                if status == "true"{
                    
                    for i in 0..<json["data"].count {
                        self.loginResponseModelArray.append(LoginResponseModel.init(first_name: json["data"][i]["first_name"].stringValue, mobile_no: json["data"][i]["mobile_no"].stringValue, last_name: json["data"][i]["last_name"].stringValue, id: json["data"][i]["id"].stringValue, fcm_token: json["data"][i]["fcm_token"].stringValue))
                    }
                    print(self.loginResponseModelArray)
                    
                    UserDefaults.standard.setValue(self.loginResponseModelArray[0].first_name, forKey: USER_DEFAULTS_KEYS.FIRST_NAME)
                    UserDefaults.standard.setValue(self.loginResponseModelArray[0].last_name, forKey: USER_DEFAULTS_KEYS.LAST_NAME)
                    UserDefaults.standard.setValue(self.loginResponseModelArray[0].id, forKey: USER_DEFAULTS_KEYS.HEALER_ID)
                    UserDefaults.standard.setValue(self.loginResponseModelArray[0].mobile_no, forKey: USER_DEFAULTS_KEYS.MOBILE_NUMBER)
                    UserDefaults.standard.setValue(self.loginResponseModelArray[0].fcm_token, forKey: USER_DEFAULTS_KEYS.FCM_TOKEN)
                    
                   

                }else{
                    
                    print("Error")
                }
            } errorBlock: { (NSError) in
               CustomLoader.shareInstance.hideLoaderView()
            }
            
        }else{
            
            showOkAlert()
        }
    }
}


public class LoginViewModel {
    weak var vc: LoginViewController?
    
    
    public func loginAPI(){
        
        guard let employeeId = vc?.employeeTextField.text, let password = vc?.passwordTextField.text
        else{
            return
        }
        
        if Reachability.isConnectedToNetwork(){
            showProgressOnView((self.vc?.view)!)
            
            let param1 : [String : String] = [
                "emp_id": employeeId ,
                "password": password
            ]
            print(param1)
            
            ServerClass.sharedInstance.postRequestWithUrlParameters(param1, path:BASE_URL + PROJECT_URL.LOGIN_API) { (json) in
                print(json)
                hideProgressOnView((self.vc?.view)!)
                let status = json["status"].stringValue
                print("The Status: \(status)")
                print("Success!!")
                if status == "true"{
                    print("Success")
                    
                }else{
                    
                    print("Error")
                }
            } errorBlock: { (NSError) in
                //print("Error!!")
                showPasswordEqualAlert()
                hideProgressOnView((self.vc?.view)!)
            }
            
        }else{
            
            showPasswordEqualAlert()
            
        }
        
    }
    
    
}
