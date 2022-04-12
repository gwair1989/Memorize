//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Oleksandr Khalypa on 09.04.2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
