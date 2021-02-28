//
//  LoginResponseModel.swift
//  Healer
//
//  Created by Sarvesh Patel on 17/02/21.
//

import Foundation
import  SwiftyJSON
struct LoginResponseModel : Codable {
    
    var first_name: String = ""
    var mobile_no: String = ""
    var last_name: String = ""
    var id: String = ""
    var fcm_token: String = ""
    
    }
