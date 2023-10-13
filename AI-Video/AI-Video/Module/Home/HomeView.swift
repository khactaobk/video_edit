//
//  HomeView.swift
//  AI-Video
//
//  Created by KhacTao on 13/10/2023.
//

import SwiftUI

struct HomeView: View {
    private var categorys = ["Video", "Anime", "Image"]
    
    var body: some View {
        NavigationStack {
            VStack {
                TabView {
                    ForEach(categorys, id: \.self) { category in
                        Text(category)
                    }
                }.tabViewStyle(.page)
            }
            .navigationTitle("Home")
            .navigationSplitViewStyle(.balanced)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
