//
//  ContentView.swift
//  BlossomMovies
//
//  Created by Engineer Awais on 07/01/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Home",systemImage: "house"){
                Text("Home")
            }
            
            Tab("Upcoming",systemImage: "play.circle"){
                Text("Upcoming")
            }
            
            Tab("Search",systemImage: "magnifyingglass"){
                Text("Home")
            }
            
            Tab("Download",systemImage: "arrow.down.to.line"){
                Text("Download")
            }
        }
    }
}

#Preview {
    ContentView()
}
