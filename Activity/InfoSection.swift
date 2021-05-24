//
//  InfoSection.swift
//  Activity
//
//  Created by Jeremy Hsu on 5/23/21.
//

import SwiftUI

struct InfoSection: View {
  private var headerText: String
  private var items: [Item]
  private var isLast: Bool
  
  init(headerText: String, items: [Item], isLast: Bool = false) {
    self.headerText = headerText
    self.items = items
    self.isLast = isLast
  }
  
  var body: some View {
    VStack(alignment: .leading, spacing: 10) {
      Text(headerText)
        .font(.title)
        .fontWeight(.semibold)
      
      ForEach(items, id: \.id) { item in
        KeyValueRow(key: item.key, value: item.value, unit: item.unit)
      }
      
      if !isLast {
        Divider()
      }
    }
  }
}

struct InfoSection_Previews: PreviewProvider {
  static let items = [
    Item(
      key: "OS Version",
      value: ProcessInfo.processInfo.operatingSystemVersionString
    ),
    Item(key: "Key2", value: "Value2"),
  ]
  
  static var previews: some View {
    InfoSection(headerText: "Information", items: items)
  }
}
