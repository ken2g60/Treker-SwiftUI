//
//  ContentView.swift
//  Treker
//
//  Created by knight on 12/22/20.
//

import SwiftUI

struct ContentView: View {
    
    var location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(.title)
                .foregroundColor(Color.secondary)
            
            Text(location.description)
                .padding(.horizontal)
            
            Text("Did you know?")
                .font(.title)
                .bold()
                .padding(.top)
            
            Text(location.more)
                .padding(.horizontal)
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(location: Location.example)
    }
}
