//
//  Card.swift
//  MatchingPairs
//
//  Created by Alina Sabo Brandus on 03.03.2024.
//

import Foundation

struct Card: Codable {
    
    let cardColor: CardColor
    let cardSymbol: String
    let symbols: [String]
    let title: String
    
    //trebuie sa existe un match intre cheia din json cu cea din clasa si aici se face legatura
    private enum CodingKeys: String, CodingKey {
        case cardColor = "card_color"
        case cardSymbol = "card_symbol"
        case symbols
        case title
    }
}
