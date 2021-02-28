//
//  APIConstant.swift
//  Healer
//
//  Created by Sarvesh Patel on 16/02/21.
//

import Foundation
let BASE_URL = "https://team-dev.aaranyawellness.com/api/"
let kUnexpectedErrorAlertString = "An unexpected error has occurred. Please try again." as String

struct PROJECT_URL {
    /****** COMMON API ******/
    
    
    static let LOGIN_API = "healer/login"
    static let SEND_API = "send_otp"
    static let VERIFY_API = "healer/cunfirmation_otp"
    static let SCHEDULE_API = "healer/today-schedule"
    
    
   
    
    
   
    
}


struct USER_DEFAULTS_KEYS {
   
   
    static let APP_LANGUAGE = "appLanguage"
    static let FIRST_NAME = "first_name"
    static let LAST_NAME = "last_name"
    static let MOBILE_NUMBER = "mobile_number"
    static let HEALER_ID = "healer_id"
    static let FCM_TOKEN = "fcm_token"
    
    
    
}

