//
//  DataAccessError.swift
//  Flapjack
//
//  Created by Ben Kreeger on 11/4/17.
//  Copyright © 2017 O'Reilly Media, Inc. All rights reserved.
//

import Foundation

public enum DataAccessError: LocalizedError, CustomStringConvertible {
    case preparationError(Error?)
    
    public var description: String {
        switch self {
        case .preparationError:
            return "DataAccessError.preparationError: \(localizedDescription)"
        }
    }
    
    public var localizedDescription: String {
        switch self {
        case .preparationError(let error):
            return (error as NSError?)?.localizedDescription ?? "unknown error"
        }
    }
}
