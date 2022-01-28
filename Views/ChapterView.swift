//
//  BookView.swift
//  RandomScriptures
//
//  Created by Max Evans on 1/25/22.
//

import SwiftUI

struct ChapterView: View {
  let booksOfScriptres = ["All", "1 Nephi 1", "1 Nephi 2", "1 Nephi 3"]
  var book: String
  var index: Int { booksOfScriptres.firstIndex(of: book)! }
  
  var body: some View {
    let pickBook = PickBook(book: book)
    let verses = pickBook.getStringVerses()
    VStack {
      Text(pickBook.verseName())
        .font(.largeTitle)
    ScrollView {
      ForEach(verses, id: \.self) { verse in
        Text(verse)
      }
    }
    .padding()
    }
  }
}


struct ChapterView_Previews: PreviewProvider {
  static var previews: some View {
    ChapterView(book: "1 Nephi 1")
  }
}
