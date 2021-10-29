//
//  HomeView.swift
//  MMdaC
//
//  Created by Paul Hart on 2021-10-28.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Home")
                Spacer()
            }
            .navigationTitle("Caravaggio Home")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
