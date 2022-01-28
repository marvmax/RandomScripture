//
//  ContentView.swift
//  RandomScriptures
//
//  Created by Max Evans on 1/25/22.
//

import SwiftUI

struct ContentView: View {
  let booksOfScriptres = ["All", "1 Nephi 1", "1 Nephi 2", "1 Nephi 3"]
  var body: some View {
    NavigationView {
      List(booksOfScriptres, id: \.self) { (bookOfScipture) in
        NavigationLink(destination: ChapterView(book: bookOfScipture )) {
          Text(bookOfScipture)
        }
      }
      .navigationBarTitle("Pick a Book")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
