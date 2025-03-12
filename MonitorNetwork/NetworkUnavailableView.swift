//
//  NetworkUnavailableView.swift
//  MonitorNetwork
//
//  Created by Samar Khaled on 12/03/2025.
//
import SwiftUI

struct NetworkUnavailableView: View {
    var onRefresh: () -> Void
    var body: some View {
        ContentUnavailableView {
            Label(
                "Connection issue",
                systemImage: "wifi.slash" // or  "wifi.exclamationmark"
            )
        } description: {
            Text("Check your internet connection")
        } actions: {
            Button("Refresh") {
                onRefresh()
            }
        }
    }
}

#Preview {
    NetworkUnavailableView {}
}
