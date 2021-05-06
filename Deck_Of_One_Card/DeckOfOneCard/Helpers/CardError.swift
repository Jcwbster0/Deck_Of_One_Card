//
//  CardError.swift
//  DeckOfOneCard
//
//  Created by Justin Webster on 5/4/21.
//  Copyright © 2021 Warren. All rights reserved.
//

import Foundation


enum CardError: LocalizedError {
    
    case invalidURL
    case thrownError(Error)
    case noData
    case unableToDecode
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Unable to reach the server."
        case .thrownError(let error):
            print(error.localizedDescription)
            return "That card couldn't be drawn"
        case .noData:
            return "The server responded with no data"
        case .unableToDecode:
            return "The server responded with bad data."
        }
    }
}
