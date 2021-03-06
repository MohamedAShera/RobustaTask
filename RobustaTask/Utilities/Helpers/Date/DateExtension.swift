//
//  DateExtension.swift
//  RobustaTask
//
//  Created by mohamed shera on 09/05/2022.
//

import Foundation
import UIKit

extension Date {
    func timeAgoDisplay() -> String {
        let currentDate = Date()
        
        return currentDate.offset(from: self)
        
    }
    
    /// Returns the amount of years from another date
    func years(from date: Date) -> Int {
        return Calendar.current.dateComponents([.year], from: date, to: self).year ?? 0
    }
    /// Returns the amount of months from another date
    func months(from date: Date) -> Int {
        return Calendar.current.dateComponents([.month], from: date, to: self).month ?? 0
    }
    /// Returns the amount of weeks from another date
    func weeks(from date: Date) -> Int {
        return Calendar.current.dateComponents([.weekOfMonth], from: date, to: self).weekOfMonth ?? 0
    }
    /// Returns the amount of days from another date
    func days(from date: Date) -> Int {
        return Calendar.current.dateComponents([.day], from: date, to: self).day ?? 0
    }
    /// Returns the amount of hours from another date
    func hours(from date: Date) -> Int {
        return Calendar.current.dateComponents([.hour], from: date, to: self).hour ?? 0
    }
    /// Returns the amount of minutes from another date
    func minutes(from date: Date) -> Int {
        return Calendar.current.dateComponents([.minute], from: date, to: self).minute ?? 0
    }
    /// Returns the amount of seconds from another date
    func seconds(from date: Date) -> Int {
        return Calendar.current.dateComponents([.second], from: date, to: self).second ?? 0
    }
    /// Returns the a custom time interval description from another date
    func offset(from date: Date) -> String {
        let normalDateFormatter = DateFormatter()
        normalDateFormatter.dateFormat = "dd MMM yyyy"
        
        if years(from: date)   > 0 { return normalDateFormatter.string(from: date)}
        if months(from: date)  > 0 { return "\(months(from: date)) Month ago"  }
        if weeks(from: date)   > 0 { return "\(weeks(from: date)) week ago"   }
        if days(from: date)    > 0 { return "\(days(from: date)) day ago"    }
        if hours(from: date)   > 0 { return "\(hours(from: date)) hour ago"   }
        if minutes(from: date) > 0 { return "\(minutes(from: date)) minutes ago" }
        if seconds(from: date) > 0 { return "\(seconds(from: date)) seconds ago" }
        return ""
    }
}
