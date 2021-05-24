//
//  ContentView.swift
//  Activity
//
//  Created by Jeremy Hsu on 5/23/21.
//

import SwiftUI

struct ContentView: View {
  private var item1 = "Item 1"
  private var item2 = "Item 2"
  private var item3 = "Item 3"
  
  var body: some View {
    VStack(alignment: .leading, spacing: 10) {
      Text("First Header")
        .font(.title)
        .fontWeight(.semibold)
      Text(item1)
      Text(item2)
      
      Divider()
      
      Text("Second Header")
        .font(.title)
        .fontWeight(.semibold)
      Text(item3)
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
