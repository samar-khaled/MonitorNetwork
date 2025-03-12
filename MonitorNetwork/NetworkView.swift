//
//  NetworkView.swift
//  MonitorNetwork
//
//  Created by Samar Khaled on 12/03/2025.
//
import SwiftUI
import Network

struct NetworkView: View {
    @State private var isNetworkAvailable: Bool = false

        var body: some View {
            VStack {
                if isNetworkAvailable {
                    Text("Network is Available")
                } else {
                    NetworkUnavailableView() {
                        // do nothing
                    }
                }
            }
            .task {
                for await path in NWPathMonitor() {
                    isNetworkAvailable = path.status == .satisfied
                }
            }
        }
