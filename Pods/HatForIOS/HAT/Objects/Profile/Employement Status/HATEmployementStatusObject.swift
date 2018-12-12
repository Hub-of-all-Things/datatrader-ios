/**
 * Copyright (C) 2018 HAT Data Exchange Ltd
 *
 * SPDX-License-Identifier: MPL2
 *
 * This file is part of the Hub of All Things project (HAT).
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/
 */

import SwiftyJSON

// MARK: Struct

public struct HATEmployementStatusObject: HatApiType, Comparable {
    
    // MARK: - Comparable protocol
    
    /// Returns a Boolean value indicating whether two values are equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    public static func == (lhs: HATEmployementStatusObject, rhs: HATEmployementStatusObject) -> Bool {
        
        return (lhs.recordID == rhs.recordID)
    }
    
    /// Returns a Boolean value indicating whether the value of the first
    /// argument is less than that of the second argument.
    ///
    /// This function is the only requirement of the `Comparable` protocol. The
    /// remainder of the relational operator functions are implemented by the
    /// standard library for any type that conforms to `Comparable`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    public static func < (lhs: HATEmployementStatusObject, rhs: HATEmployementStatusObject) -> Bool {
        
        return lhs.recordID < rhs.recordID
    }
    
    // MARK: - Fields
    
    /// The possible Fields of the JSON struct
    private struct Fields {
        
        static let status: String = "status"
        static let recordId: String = "recordId"
        static let unixTimeStamp: String = "unixTimeStamp"
        static let data: String = "data"
    }
    
    // MARK: - Variables
    
    /// Employment status
    public var status: String = ""
    /// The record ID
    public var recordID: String = "-1"
    
    // MARK: - Initialisers
    
    /**
     The default initialiser. Initialises everything to default values.
     */
    public init() {
        
        status = ""
        recordID = "-1"
    }
    
    /**
     It initialises everything from the received JSON file from the HAT
     
     - dict: The JSON file received from the HAT
     */
    public init(from dict: JSON) {
        
        if let data = (dict[Fields.data].dictionary) {
            
            if let tempStatus = (data[Fields.status]?.stringValue) {
                
                status = tempStatus
            }
        }
        
        recordID = (dict[Fields.recordId].stringValue)
    }
    
    public mutating func initialize(fromCache: Dictionary<String, Any>) {
        
        if let tempStatus = fromCache[Fields.status] {
            
            self.status = String(describing: tempStatus)
        }
    }
    
    // MARK: - JSON Mapper
    
    public func toJSON() -> Dictionary<String, Any> {
        
        return [
            
            Fields.status: self.status,
            Fields.unixTimeStamp: Int(HATFormatterHelper.formatDateToEpoch(date: Date())!)!
        ]
        
    }
}
