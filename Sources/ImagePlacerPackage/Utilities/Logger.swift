//
//  Logger.swift
//  Image_Loading_Library
//
//  Created by Vishnu on 28/09/19.
//  Copyright © 2019 GreedyGame. All rights reserved.
//

import Foundation

class Logger{
    
    static var enableLog = false
    
    static var dateFormat = "yyyy-MM-dd hh:mm:ssSSS"
    
    static var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = dateFormat
        formatter.locale = Locale.current
        formatter.timeZone = TimeZone.current
        return formatter
    }
    
    static func d(tag:String, message:String, line:Int = #line){
        print("\(Date().toString()) [🀄️] GG[\(tag)] | \(line) : \(message) ")
    }
    
    static func i(tag:String, message:String, line:Int = #line){
        print("\(Date().toString()) [💬] GG[\(tag)] | \(line) : \(message) ")
    }
}

internal extension Date {
    func toString() -> String {
        return Logger.dateFormatter.string(from: self as Date)
    }
}
