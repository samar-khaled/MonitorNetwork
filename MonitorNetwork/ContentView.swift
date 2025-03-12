//
//  ContentView.swift
//  MonitorNetwork
//
//  Created by Samar Khaled on 12/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink("Without Network Manager", destination: NetworkView())
        }
    }
}

#Preview {
    ContentView()
}
