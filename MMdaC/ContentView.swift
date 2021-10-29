//
//  ContentView.swift
//  MMdaC
//
//  Created by Paul Hart on 2021-10-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            PaintingsView()
                .tabItem {
                    Label("Paintings", systemImage: "photo.on.rectangle.angled")
                }

            GalleriesView()
                .tabItem {
                    Label("Paintings", systemImage: "building.columns")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
