//
//  ContentView.swift
//  AI-Video
//
//  Created by KhacTao on 13/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem({
                Label("Home", systemImage: "house")
            })
            
            SettingView()
                .tabItem {
                Label("Setting", systemImage: "gearshape.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
