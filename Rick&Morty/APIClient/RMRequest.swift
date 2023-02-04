//
//  RMRequest.swift
//  Rick&Morty
//
//  Created by Iker Perea Trejo on 4/2/23.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api/"
    }
    /// Desired endpoint
   private let endpoint: RMEndpoint
    /// Path components for API, if any
    private let pathComponents: Set<String>
    /// Query arguments for APi, if any
    private let queryParameters: [URLQueryItem]
    /// Constructed url for the api request in string format.
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
    if !pathComponents.isEmpty {
            pathComponents.forEach ({
                string += "/\($0)"
            })
            
        }
        
        if !queryParameters.isEmpty {
                string +=  "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {   return nil  }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
            
        }
        
        return string
    }
    /// Computed & constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    /// Desired http method
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    
    init(endpoint: RMEndpoint,
         pathComponments: Set<String> = [],
         queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponments
        self.queryParameters = queryParameters
    }
}
