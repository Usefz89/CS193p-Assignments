//
//  EmojiMemoryGame.swift
//  Assignment one
//
//  Created by yousef zuriqi on 27/09/2021.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    
    @Published private var model: MemoryGame<String>
    var theme: Theme = ThemesStore().themes[0]
   
    init() {
        model = Self.makeMemoryGame(theme: theme)
    }
    
    
     var cards: [MemoryGame<String>.Card] {
         model.cards
        
    }
    
    var scoreCounter: Int {
        model.scoreCounter
    }
    
     var color: Color {
        switch theme.color {
        case "red": return Color.red
        case "blue": return Color.blue
        case "green": return Color.green
        case "orange": return Color.orange
        case "black": return Color.black
        case "yellow": return Color.yellow
        default: return Color.red
        }
    }
    
    //MARK: - FUNCTIONS:
    
     static func makeMemoryGame(theme: Theme) -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: theme.numberOfPairsOfCards) { pairIndex in
            theme.emojis.map{String($0)}[pairIndex]
        }
        
    }
    
    // MARK: - INTENTS:
    
     func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
    func startNewGame() {
        model = Self.makeMemoryGame(theme: theme)
    }
}

