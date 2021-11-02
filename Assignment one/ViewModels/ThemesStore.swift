//
//  ThemesStore.swift
//  Assignment Two
//
//  Created by yousef zuriqi on 01/11/2021.
//

import SwiftUI

class ThemesStore: ObservableObject {
    
   @Published var themes: [Theme] = [
    Theme(name: "Vehicle", emojis: "🚗🚕🚙🚌🚎🏎🚓🚑🚒🚐🛻🚚🚛🚜🛺 🚨 🚔 🚍 🚘 🚖 🚡 🚠 🚟 🚃 🚋 🚞 🚝 🚄 🚅 🚈 🚂 🚆", numberOfPairsOfCards: 8, rgbaColor: RGBAColor(red: 0, green: 0, blue: 1, alpha: 1)),
    Theme(name: "Sports", emojis: "⚽️🏀🏈⚾️🥎🎾🏐🏉🥏🎱", numberOfPairsOfCards: 6,
          rgbaColor: RGBAColor(red: 1, green: 0, blue: 0, alpha: 1)),
    Theme(name: "Foods", emojis: "🍏🍎🍐🍊🍋🍌🍉🍇🍓🫐🍈🍒🍑🥭🍍🥥🥝🍅", numberOfPairsOfCards: 5,
          rgbaColor: RGBAColor(red: 0, green: 1, blue: 0, alpha: 1)),
    Theme(name: "Object", emojis: "⌚️📱💻⌨️🖥🖨🖱🖲🕹", numberOfPairsOfCards: 8,
          rgbaColor: RGBAColor(red: 1, green: 0.5, blue: 0, alpha: 1)),
    Theme(name: "Flags", emojis:"🏳️‍🌈🏳️‍⚧️🏴‍☠️🇦🇫🇦🇽🇦🇱🇩🇿🇦🇸🇦🇩🇦🇴🇦🇶🇦🇬🇦🇷🇦🇲🇦🇼🇦🇺🇦🇹🇦🇿🇧🇸", numberOfPairsOfCards: 8, rgbaColor: RGBAColor(color: .black)),
    Theme(name: "Animals", emojis:"🐶🐱🐭🐹🐰🦊🐻🐼🐻‍❄️🐨🐯🦁🐮🐷🐽🐸", numberOfPairsOfCards: 8,
          rgbaColor: RGBAColor(red: 1, green: 0, blue: 1, alpha: 1)),
   ]
}
