//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jonah Duffin on 1/29/23.
//

import SwiftUI



class EmojiMemoryGame: ObservableObject {
    
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🐲","👹","👻","🤖","💀","😈","☠️","👽","🤢","👿","👺","👾","🤡","💩","🤮","🫥","😱","🧟","🧞‍♂️","🧌","🦖","🐊","🦥"]
    
//    @State var spookyEmojis = ["🐲","👹","👻","🤖","💀","😈","☠️","👽","🤢","👿","👺","👾","🤡","💩","🤮","🫥","😱","🧟","🧞‍♂️","🧌","🦖","🐊","🦥"]
//    @State var fruitEmojis = ["🍏","🍎","🍐","🍊","🍋","🍌","🍉","🍇","🍓","🫐"]
//    @State var sportEmojis = ["⚽️","🏀","🏈","⚾️","🥎","🎾","🏐","🏉","🥏","🎱"]
//    @State var emojis = ["🐲","👹","👻","🤖","💀","😈","☠️","👽","🤢","👿","👺","👾","🤡","💩","🤮","🫥","😱","🧟","🧞‍♂️","🧌","🦖","🐊","🦥"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 8) { pairIndex in emojis[pairIndex]}
    }
    
    @Published private var model = createMemoryGame()
    
    
    
    var cards: [Card] {
        model.cards
    }
    
    // MARK: - Intent(s)
    func choose (_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
