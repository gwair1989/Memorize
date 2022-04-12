//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Oleksandr Khalypa on 12.04.2022.
//

import SwiftUI


class EmojiMemoryGame {
    
   static let emojis: Array<String> = ["✈️", "🚘", "🚃", "🚀", "🛶", "⛵️", "🚤", "🚁", "⚓️", "🏰", "🚠", "🚟", "🚔", "🚖", "🛺", "🚜", "🚛", "🚑", "🚒", "🏎", "🚌", "🚎", "🚙", "🚕"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()

    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
}

