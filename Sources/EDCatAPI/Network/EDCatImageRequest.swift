//
//  EDCatImageRequest.swift
//  
//
//  Created by Engin Deniz Usta on 14.01.23.
//

import Foundation
import EDNetwork

struct EDCatImageEndpoint: EDEndpoint {
    var path = ""
    var method: EDEndpointMethod = .GET
}

struct EDCatImageRequest: EDRequest {
    let url: URL
    let endpoint = EDCatImageEndpoint()
    let requestData = EDCatRequestData(apiKey: "")
    
    init(url: String) {
        self.url = URL(string: url)!
    }
}
