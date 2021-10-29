//
//  PaintingsView.swift
//  MMdaC
//
//  Created by Paul Hart on 2021-10-28.
//

import SwiftUI

struct PaintingsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Paintings")
                Spacer()
            }
            .navigationTitle("Caravaggio Paintings")
        }
    }
}

struct PaintingsView_Previews: PreviewProvider {
    static var previews: some View {
        PaintingsView()
    }
}
