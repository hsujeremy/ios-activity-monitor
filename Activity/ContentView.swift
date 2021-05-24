//
//  ContentView.swift
//  Activity
//
//  Created by Jeremy Hsu on 5/23/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 10) {
      Group {
        Text("OS Information")
          .font(.title)
          .fontWeight(.semibold)
        KeyValueRow(
          key: "Version",
          value:ProcessInfo.processInfo.operatingSystemVersionString
        )
        Divider()
      }
      
      Group {
        Text("Device Information")
          .font(.title)
          .fontWeight(.semibold)
        KeyValueRow(
          key: "Processors",
          value: String(ProcessInfo.processInfo.processorCount)
        )
        KeyValueRow(
          key: "Currently Active Processors",
          value: String(ProcessInfo.processInfo.activeProcessorCount)
        )
        KeyValueRow(
          key: "Physical Memory",
          value: String(ProcessInfo.processInfo.physicalMemory)
        )
        KeyValueRow(
          key: "System Uptime",
          value: String(ProcessInfo.processInfo.systemUptime)
        )
        Divider()
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
