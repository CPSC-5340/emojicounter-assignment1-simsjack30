// John Sims
// Assignment 1
// CPSC 5340
// 16 MAR 2024

import SwiftUI

struct ContentView: View {
    
    let emojis = ["🏠", "🐶", "😎", "🏆", "📅"]

    var body: some View {
        NavigationView {
            List {
                ForEach(emojis, id: \.self) { emoji in
                    ListItem(emoji: emoji)
                }
            }
            .navigationTitle("Emoji Counter")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ListItem: View {
    let emoji: String
    @State private var num = 0
    
    var body: some View {
        HStack {
            Text("\(emoji) Counter: \(num)")
            Spacer()
            Button(action: {
                self.num += 1
            }) {
                Text("+").frame(minWidth: 20, minHeight: 20)
            }
            Button(action: {
                self.num -= 1
            }) {
                Text("-").frame(minWidth: 20, minHeight: 20)
            }
        }
        .buttonStyle(BorderedButtonStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
