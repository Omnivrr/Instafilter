//
//  ContentView.swift
//  Instafilter
//
//  Created by Bukhari Sani on 18/07/2023.
//
import CoreImage
import CoreImage.CIFilterBuiltins
import SwiftUI

struct ContentView: View {
    @State private var image: Image?
    @State private var filterIntensity = 0.5
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(.secondary)
                
                Text("Tap to select a picture")
                    .foregroundColor(.white)
                    .font(.headline)
                
                image?
                    .resizable()
                    .scaledToFit()
            }
            .onTapGesture {
                // Select an image
            }
            
            HStack {
                Text("Intensity")
                Slider(value: $filterIntensity)
            }
            .padding(.vertical)
            
            HStack {
                Button("Change filler") {
                    // change filter
                }
                
                Spacer()
                
                Button("Save") {
                    
                }
            }
        }
        .padding([.horizontal, .bottom])
        .navigationTitle("Instafilter")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
