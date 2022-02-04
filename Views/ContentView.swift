//
//  ContentView.swift
//  RandomScriptures
//
//  Created by Max Evans on 1/25/22.
//

import SwiftUI

struct ContentView: View {
  let standardWorks = ["Standard Works", "Old Testament", "New Testament", "Book of Mormon", "Doctrine and Covenants", "Pearl of Great Price"]
  var body: some View {
    NavigationView {
      List(standardWorks, id: \.self) { work in
        NavigationLink(destination: VerseView(work: work)) {
          Text(work)
        }
      }
      .navigationTitle("Pick a Book")
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
