//
//  ContentView.swift
//  Assignment one
//
//  Created by yousef zuriqi on 25/09/2021.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    
    @ObservedObject var game: EmojiMemoryGame
    @EnvironmentObject var themesStore: ThemesStore
    
   
    var body: some View {
        
            VStack {
                ScrollView  {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                        ForEach(game.cards) { card  in
                            CardView(card: card, color: Color(rgbaColor: game.theme.color))
                                .aspectRatio(2/3, contentMode: .fit)
                                .onTapGesture {
                                    game.choose(card)
                            }
                        }
                    }
                }
                Text("Game Score = \(game.scoreCounter)")
                    .font(.headline)
            }
            .navigationTitle("\(game.theme.name)")
        
        .padding(.horizontal)
    }
    var newGameButton: some View {
        Text("NEW GAME")
            .font(.title3).bold()
            .padding()
            .background(Color.orange)
            .cornerRadius(15)
            .shadow(radius: 5)
            .foregroundColor(.white)
    }
}

struct CardView: View  {
    var card: MemoryGame<String>.Card
    var color: Color
     
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else if card.isMatched {
                shape.opacity(0)
                
            } else {
                shape.fill()
            }
        }
        .foregroundColor(color)
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame(theme: ThemesStore().themes[0])
        EmojiMemoryGameView(game: game)
            .environmentObject(ThemesStore())
    }
}
