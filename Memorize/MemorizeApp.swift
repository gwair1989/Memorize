//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Oleksandr Khalypa on 09.04.2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
   private let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
