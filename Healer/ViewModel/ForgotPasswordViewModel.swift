//
//  ForgotPasswordViewModel.swift
//  Healer
//
//  Created by Sarvesh Patel on 19/02/21.
//

import Foundation
import UIKit

class ForgotPasswordViewModel{
    
   weak var vc:ForgotPasswordViewController?
    
    
    func forgotAPI() {
        
        let param1: [String: String] = [
            
            "mobile": UserDefaults.standard.value(forKey: "mobileNumber") as! String
        
        ]
        print(param1)
        if Reachability.isConnectedToNetwork(){
            CustomLoader.shareInstance.showLoaderView()
        ServerClass.sharedInstance.postRequestWithUrlParameters(param1, path: BASE_URL + PROJECT_URL.SEND_API) { (json) in
            print(json)
            CustomLoader.shareInstance.hideLoaderView()
        } errorBlock: { (NSError) in
            CustomLoader.shareInstance.hideLoaderView()
            
        }

        }else{
            CustomLoader.shareInstance.showLoaderView()
        }
    }
}
