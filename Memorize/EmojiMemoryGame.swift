//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Oleksandr Khalypa on 12.04.2022.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
   private static let emojis: Array<String> = ["✈️", "🚘", "🚃", "🚀", "🛶", "⛵️", "🚤", "🚁", "⚓️", "🏰", "🚠", "🚟", "🚔", "🚖", "🛺", "🚜", "🚛", "🚑", "🚒", "🏎", "🚌", "🚎", "🚙", "🚕"]
    
   private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    
    @Published private var model = createMemoryGame()
    
    
    var cards: Array<Card> {
        model.cards
    }
    
    //    MARK: - Intent(s)
    func choose(_ card: Card) {
        model.choose(card)
    }
    
}

