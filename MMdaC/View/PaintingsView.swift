//
//  PaintingsView.swift
//  MMdaC
//
//  Created by Paul Hart on 2021-10-28.
//

import SwiftUI

struct PaintingsView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Paintings")
                Spacer()
            }
            .navigationTitle("Caravaggio Paintings")
            .searchable(text: $searchText)
        }
    }
}

struct PaintingsView_Previews: PreviewProvider {
    static var previews: some View {
        PaintingsView()
    }
}
