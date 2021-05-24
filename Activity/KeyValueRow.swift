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
  private var unit: String
  
  init(key: String, value: String, unit: String = "") {
    self.key = key;
    self.value = value;
    self.unit = unit;
  }
  
  var body: some View {
    Text("\(key): \(value) \(unit)")
  }
}

struct KeyValueRow_Previews: PreviewProvider {
    static var previews: some View {
      KeyValueRow(key: "Preview Key", value: "Preview Value")
    }
}
