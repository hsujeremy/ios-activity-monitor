//
//  ContentView.swift
//  Activity
//
//  Created by Jeremy Hsu on 5/23/21.
//

import SwiftUI

struct ContentView: View {
  var osItems = [
    Item(
      key: "Version",
      value: ProcessInfo.processInfo.operatingSystemVersionString
    ),
  ]
  
  var deviceItems = [
    Item(
      key: "Processors",
      value: String(ProcessInfo.processInfo.processorCount)
    ),
    Item(
      key: "Currently Active Processors",
      value: String(ProcessInfo.processInfo.activeProcessorCount)
    ),
    Item(
      key: "Physical Memory",
      value: String(ProcessInfo.processInfo.physicalMemory),
      unit: "bytes"
    ),
    Item(
      key: "System Uptime",
      value: String(format: "%.2f", ProcessInfo.processInfo.systemUptime),
      unit: "seconds"
    ),
  ]
  
  var body: some View {
    VStack(alignment: .leading, spacing: 10) {
      InfoSection(headerText: "OS Information", items: osItems)
      InfoSection(
        headerText: "Device Information",
        items: deviceItems,
        isLast: true
      )
      
      switch ProcessInfo.processInfo.thermalState {
      case .nominal:
        Text("Thermal State: ") +
        Text("Nominal")
          .fontWeight(.medium)
          .foregroundColor(.green)
      case .fair:
        Text("Thermal State: ") +
        Text("Fair")
          .fontWeight(.medium)
          .foregroundColor(.yellow)
      case .serious:
        Text("Thermal State: ") +
        Text("Serious")
          .fontWeight(.medium)
          .foregroundColor(.orange)
      case.critical:
        Text("Thermal State: ") +
        Text("Critical")
          .fontWeight(.medium)
          .foregroundColor(.red)
      @unknown default:
        Text("Thermal State: ") +
        Text("Unknown")
          .fontWeight(.medium)
          .foregroundColor(.gray)
      }
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
