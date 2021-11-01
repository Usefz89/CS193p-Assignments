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
                VStack(alignment: .leading) {
                    Text(theme.name)
                        .font(.system(.title).bold())
                        .foregroundColor(Color(rgbaColor: theme.color))
                        .padding(.bottom)
                    Text("All of: " + theme.emojis)
                        .lineLimit(1)
                }
            }
            .navigationTitle("Memorize")
        }
    }
}

struct ThemeChooserView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            ThemeChooserView()
                .environmentObject(ThemesStore())
        } else {
            // Fallback on earlier versions
        }
    }
}
