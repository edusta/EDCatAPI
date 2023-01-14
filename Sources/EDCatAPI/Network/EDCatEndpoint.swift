//
//  EDCatEndpoint.swift
//  
//
//  Created by Engin Deniz Usta on 14.01.23.
//

import Foundation
import EDNetwork

enum EDCatEndpoint: String, EDEndpoint {
    case imageSearch

    var path: String {
        switch self {
        case .imageSearch:
            return "/v1/images/search"
        }
    }

    var method: EDEndpointMethod {
        switch self {
        case .imageSearch:
            return .GET
        }
    }
}
