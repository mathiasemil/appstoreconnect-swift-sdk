//
//  RateLimit.swift
//  
//
//  Created by Mathias Emil Mortensen on 05/04/2023.
//

import Foundation

public struct RateLimit {
    public let hourlyLimit: Int
    public let remainingInCurrentHour: Int
    
    init?(value: String) {
        let components = value.split(separator: ";", omittingEmptySubsequences: true)
        
        guard
            let limitString = components.value(for: "user-hour-lim:"),
            let remainingString = components.value(for: "user-hour-rem:")
        else {
            return nil
        }
        
        guard
            let limit = Int(limitString),
            let remaining = Int(remainingString)
        else {
            return nil
        }
        
        hourlyLimit = limit
        remainingInCurrentHour = remaining
    }
}

private extension Sequence where Element == String.SubSequence {
    func value(for key: String) -> String? {
        first(where: { $0.contains(key) }).map { $0.replacingOccurrences(of: key, with: "") }
    }
}
