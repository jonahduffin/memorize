//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Jonah Duffin on 1/25/23.
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
 
