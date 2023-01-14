//
//  EDCatRequest.swift
//  
//
//  Created by Engin Deniz Usta on 14.01.23.
//

import Foundation
import EDNetwork

struct EDCatRequest: EDRequest {
    let url: URL = URL(string: "https://api.thecatapi.com/")!
    let endpoint: EDCatEndpoint
    let requestData: EDCatRequestData
}
