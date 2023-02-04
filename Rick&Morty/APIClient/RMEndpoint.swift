//
//  RMEndpoint.swift
//  Rick&Morty
//
//  Created by Iker Perea Trejo on 4/2/23.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
