//
//  ContentView.swift
//  MMdaC
//
//  Created by Paul Hart on 2021-10-28.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = "Home"

    var body: some View {
        
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }.tag("Home")

            PaintingsView()
                .tabItem {
                    Label("Paintings", systemImage: "photo.on.rectangle.angled")
                }.tag("Paintings")

            GalleriesView()
                .tabItem {
                    Label("Galleries", systemImage: "building.columns")
                }.tag("Galleries")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
