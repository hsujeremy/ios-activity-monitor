//
//  Item.swift
//  Activity
//
//  Created by Jeremy Hsu on 5/23/21.
//

import SwiftUI

struct Item: Identifiable {
  let id = UUID()
  let key: String
  let value: String
  var unit: String = ""
}
