//
//  SettingView.swift
//  AI-Video
//
//  Created by KhacTao on 13/10/2023.
//

import SwiftUI

struct SettingView: View {
    @State private var presentedNumbers = NavigationPath()

        var body: some View {
            NavigationStack(path: $presentedNumbers) {
                NavigationLink(value: "Example") {
                    Text("Tap Me")
                }

                List(1..<50) { i in
                    NavigationLink(value: i) {
                        Label("Row \(i)", systemImage: "\(i).circle")
                    }
                }
                .navigationDestination(for: Int.self) { i in
                    Text("Detail \(i)")
                }
                .navigationDestination(for: String.self) { i in
                    Text("String Detail \(i)")
                }
                .navigationTitle("Navigation")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
