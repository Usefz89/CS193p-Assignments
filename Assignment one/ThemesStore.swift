//
//  ThemesStore.swift
//  Assignment Two
//
//  Created by yousef zuriqi on 01/11/2021.
//

import SwiftUI

class ThemesStore: ObservableObject {
    
   @Published var themes: [Theme] = [
    Theme(name: "Vehicle Emojis", emojis: "🚗🚕🚙🚌🚎🏎🚓🚑🚒🚐🛻🚚🚛🚜🛺 🚨 🚔 🚍 🚘 🚖 🚡 🚠 🚟 🚃 🚋 🚞 🚝 🚄 🚅 🚈 🚂 🚆", numberOfPairsOfCards: 8, color: "blue"),
    Theme(name: "Sports Emojis", emojis: "⚽️🏀🏈⚾️🥎🎾🏐🏉🥏🎱", numberOfPairsOfCards: 6, color: "red"),
    Theme(name: "Foods Emojis", emojis: "🍏🍎🍐🍊🍋🍌🍉🍇🍓🫐🍈🍒🍑🥭🍍🥥🥝🍅", numberOfPairsOfCards: 5, color: "green"),
    Theme(name: "Object Emojis", emojis: "⌚️📱💻⌨️🖥🖨🖱🖲🕹", numberOfPairsOfCards: 8, color: "orange"),
    Theme(name: "Flags Emojis", emojis:"🏳️‍🌈🏳️‍⚧️🏴‍☠️🇦🇫🇦🇽🇦🇱🇩🇿🇦🇸🇦🇩🇦🇴🇦🇶🇦🇬🇦🇷🇦🇲🇦🇼🇦🇺🇦🇹🇦🇿🇧🇸", numberOfPairsOfCards: 8, color: "black"),
    Theme(name: "Animals", emojis:"🐶🐱🐭🐹🐰🦊🐻🐼🐻‍❄️🐨🐯🦁🐮🐷🐽🐸", numberOfPairsOfCards: 8, color: "yellow")
   ]
}
