//
//  GalleriesView.swift
//  MMdaC
//
//  Created by Paul Hart on 2021-10-28.
//

import SwiftUI

struct GalleriesView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Galleries")
                Spacer()
            }
            .navigationTitle("Caravaggio Galleries")
        }
    }
}

struct GalleriesView_Previews: PreviewProvider {
    static var previews: some View {
        GalleriesView()
    }
}
