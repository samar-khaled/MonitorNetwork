//
//  NetworkMonitor.swift
//  MonitorNetwork
//
//  Created by Samar Khaled on 12/03/2025.
//
import Foundation
import Network

@Observable
final class NetworkMonitor {
    private let networkMonitor = NWPathMonitor()
    private let workerQueue = DispatchQueue(label: "Monitor")
    var isConnected = false
    
    init() {
        networkMonitor.pathUpdateHandler = { [weak self] path in
            self?.isConnected = path.status == .satisfied
        }
        networkMonitor.start(queue: workerQueue)
    }
}
