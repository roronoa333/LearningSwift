//
//  ContentView.swift
//  MyFirstiOSApp
//
//  Created by Nripesh Pokala on 8/15/23.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🔥
    case 💫
    case 🥲
    case 🌿
}

struct ContentView: View {
    @State var selection: Emoji = .🥲
    var body: some View {
        NavigationView{
            VStack{
                Text(selection.rawValue).font(.system(size: 150))
                Picker("Select Emoji", selection: $selection){
                    ForEach(Emoji.allCases, id: \.self) { emoji in Text(emoji.rawValue) }
                    
                }.pickerStyle(.segmented)
            }.padding().navigationTitle("  My First iOS App")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
