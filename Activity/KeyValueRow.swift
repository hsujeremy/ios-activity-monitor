//
//  KeyValueRow.swift
//  Activity
//
//  Created by Jeremy Hsu on 5/23/21.
//

import SwiftUI

struct KeyValueRow: View {
  private var key: String
  private var value: String
  
  init(key: String, value: String) {
    self.key = key;
    self.value = value;
  }
  
  var body: some View {
    Text("\(key): \(value)")
  }
}

struct KeyValueRow_Previews: PreviewProvider {
    static var previews: some View {
      KeyValueRow(key: "Preview Key", value: "Preview Value")
    }
}
