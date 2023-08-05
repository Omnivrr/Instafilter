//
//  ContentView.swift
//  Instafilter
//
//  Created by Bukhari Sani on 18/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var image: Image?
    
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
        }
        .onAppear(perform: loadImage)
    }
                  func loadImage() {
            image = Image("singapore")
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
