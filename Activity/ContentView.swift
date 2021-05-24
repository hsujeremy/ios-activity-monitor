//
//  ContentView.swift
//  Activity
//
//  Created by Jeremy Hsu on 5/23/21.
//

import SwiftUI

struct ContentView: View {
  private var osItems = [
    Item(
      key: "Version",
      value: ProcessInfo.processInfo.operatingSystemVersionString
    ),
  ]
  
  private var deviceItems = [
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
      value: String(ProcessInfo.processInfo.systemUptime),
      unit: "seconds"
    ),
  ]
  
  var body: some View {
    VStack(alignment: .leading, spacing: 10) {
      InfoSection(headerText: "OS Information", items: osItems)
      InfoSection(headerText: "Device Information", items: deviceItems, isLast: true)
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
