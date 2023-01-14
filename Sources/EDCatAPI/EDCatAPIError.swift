//
//  EDCatAPIError.swift
//  
//
//  Created by Engin Deniz Usta on 14.01.23.
//

import Foundation
import EDNetwork

public enum EDCatAPIError: LocalizedError {
    case noData
    case invalidData
    case network(Error)
}
