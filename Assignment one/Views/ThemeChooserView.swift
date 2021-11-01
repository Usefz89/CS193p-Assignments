//
//  ThemeChooserView.swift
//  Assignment Two
//
//  Created by yousef zuriqi on 01/11/2021.
//

import SwiftUI

struct ThemeChooserView: View {
    @EnvironmentObject var themeStore: ThemesStore
    var themes: [Theme] {
        themeStore.themes
    }
    var body: some View {
        NavigationView {
            List(themes) { theme in
                
                NavigationLink(destination: EmojiMemoryGameView(game: EmojiMemoryGame(theme: theme))) {
                    VStack(alignment: .leading) {
                        Text(theme.name)
                            .font(.system(.title).bold())
                            .foregroundColor(Color(rgbaColor: theme.color))
                            .padding(.bottom, 2)
                        Text("Number of Cards: \(theme.numberOfPairsOfCards * 2)")
                            .font(.headline)
                        Text("All of: " + theme.emojis)
                            .font(.headline)
                            .lineLimit(1)
                    }
                }
            }
            .navigationTitle("Memorize")
        }
    }
}

struct ThemeChooserView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeChooserView()
            .environmentObject(ThemesStore())
    }
}
