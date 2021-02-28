//
//  Date+Time+Extension.swift
//  Healer
//
//  Created by Sarvesh Patel on 16/02/21.
//

import Foundation
import UIKit
extension UIViewController{
    //MARK:- CurrentDate
    func currentDate() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let result = formatter.string(from: date)
        return result
    }
    
    
    //MARK:- Convert 24H To 12H
    func convert24HTo12H(timeIn24H: String) -> String{
        //    let timeIn24H = "14:15"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        
        let date = dateFormatter.date(from: timeIn24H)
        dateFormatter.dateFormat = "h:mm a"
        let Date12 = dateFormatter.string(from: date!)
        return Date12
        
        //print(convert24HTo12H(timeIn24H: "18:36"))
    }
    
    
    
    //MARK:- Convert 12H To 24H
    func convert12HTo24H(timeIn12H: String) -> String{
        //let dateAsString = "1:15 PM"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm a"
        
        let date = dateFormatter.date(from: timeIn12H)
        dateFormatter.dateFormat = "HH:mm"
        let Date24 = dateFormatter.string(from: date!)
        return Date24
        
        //print(convert12HTo24H(timeIn24H: "6:36 PM"))
        
    }
    
}
