//
//  ContentView.swift
//  Instafilter
//
//  Created by Bukhari Sani on 18/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showingConfirmation = true
    @State private var backgroundColor = Color.white
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .frame(width: 300, height: 300)
                .background(backgroundColor)
                .onTapGesture {
                    showingConfirmation = true
                }
                .confirmationDialog("Change background", isPresented: $showingConfirmation) {
                    Button("Red") {backgroundColor = .red}
                    Button("Green") { backgroundColor = .green}
                    Button("Blue") { backgroundColor = .blue}
                    Button("Cancel", role: .cancel) {}
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
