//
//  TrekerApp.swift
//  Treker
//
//  Created by knight on 12/22/20.
//

import SwiftUI

@main
struct TrekerApp: App {
    @StateObject var location = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: location.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                NavigationView {
                    TipView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
            .environmentObject(location)
        }
    }
}
