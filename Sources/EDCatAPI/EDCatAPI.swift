//
//  EDCatAPI.swift
//  
//
//  Created by Engin Deniz Usta on 14.01.23.
//

import UIKit
import EDNetwork

public class EDCatAPI {
    private let apiKey: String
    private let network: EDNetwork

    public init(apiKey: String = "") {
        self.apiKey = apiKey
        self.network = EDNetwork()
    }

    init(apiKey: String = "", network: EDNetwork = EDNetwork()) {
        self.apiKey = apiKey
        self.network = network
    }

    public func getRandomImage() async throws -> UIImage {
        let requestData = EDCatRequestData(apiKey: apiKey)
        let request = EDCatRequest(endpoint: .imageSearch, requestData: requestData)
        let result: Result<[EDCatImageResponseData], EDNetworkError> = await network.sendRequest(request)

        switch result {
        case let .success(images):
            guard let firstImageResponse = images.first else { throw EDCatAPIError.noData }
            return try await loadImage(from: firstImageResponse)
        case let .failure(error):
            throw EDCatAPIError.network(error)
        }
    }
}

private extension EDCatAPI {
    func loadImage(from response: EDCatImageResponseData) async throws -> UIImage {
        let request = EDCatImageRequest(url: response.url)
        let result = await network.sendRequest(request)

        switch result {
        case let .success(data):
            guard let image = UIImage(data: data) else { throw EDCatAPIError.invalidData }
            return image
        case let .failure(error):
            throw error
        }
    }
}
