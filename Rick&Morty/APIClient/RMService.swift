//
//  RMService.swift
//  Rick&Morty
//
//  Created by Iker Perea Trejo on 4/2/23.
//

import Foundation
/// Primary API service object to get RIck and Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    /// Privatized constructor
    private init() {}
    /// Send Rick and Morty API Call
    ///     - Parameters:
    ///         - request: Request instance
    ///         - completion: Callback with data or error
        public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}