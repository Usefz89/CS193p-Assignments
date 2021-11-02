//
//  ThemeChooserView.swift
//  Assignment Two
//
//  Created by yousef zuriqi on 01/11/2021.
//

import SwiftUI

struct ThemeChooserView: View {
    
    @EnvironmentObject var themeStore: ThemesStore
    @State private var editMode: EditMode = .inactive
    var themes: [Theme] {
        themeStore.themes
    }
    
    @State private var games: [Int: EmojiMemoryGame] = [
        0: EmojiMemoryGame(theme: ThemesStore().themes[0]),
        1: EmojiMemoryGame(theme: ThemesStore().themes[1]),
        2: EmojiMemoryGame(theme: ThemesStore().themes[2]),
        3: EmojiMemoryGame(theme: ThemesStore().themes[3]),
        4: EmojiMemoryGame(theme: ThemesStore().themes[4]),
        5: EmojiMemoryGame(theme: ThemesStore().themes[5]),
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(themes) { theme in
                    NavigationLink(
                        destination: EmojiMemoryGameView(
                            game: EmojiMemoryGame(theme: theme)
                        )
                    ) {
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
                .onDelete(perform: removeTheme)
            }
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    addThemeButton
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }
            .environment(\.editMode, $editMode)
            
            .navigationTitle("Memorize")
        }
    }
    
    //MARK: - Add New Theme

    var addThemeButton: some View {
        Button("Add Theme") {
            // append theme to themes
            appendTheme()
        }
    }
    
    private func appendTheme() {
        themeStore.themes.append(
            Theme(name: "New", numberOfPairOfCards: 2, emojis: "😀😆", color: .black)
        )
    }
    
    //MARK: - Remove Themes:
    
    private func removeTheme(at offSet: IndexSet) {
        themeStore.themes.remove(atOffsets: offSet)
    }
}

//MARK: - Preview

struct ThemeChooserView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeChooserView()
            .environmentObject(ThemesStore())
    }
}
