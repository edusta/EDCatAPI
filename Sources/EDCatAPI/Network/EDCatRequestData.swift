//
//  EDCatRequestData.swift
//  
//
//  Created by Engin Deniz Usta on 14.01.23.
//

import Foundation
import EDNetwork

struct EDCatEmptyRequestData: Encodable { }

class EDCatRequestData: EDRequestData {
    let data: EDCatEmptyRequestData? = nil
    let headers: [String : String]?
    let queryItems: [String : String?]? = nil

    init(apiKey: String) {
        self.headers = apiKey.isEmpty ? [:] : ["x-api-key": apiKey]
    }
}
