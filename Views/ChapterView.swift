//
//  BookView.swift
//  RandomScriptures
//
//  Created by Max Evans on 1/25/22.
//

import SwiftUI

struct ChapterView: View {
  var pickBook: PickBook
  var body: some View {
    //let pickBook = PickBook(book: book)
    let verses = pickBook.verseStrings
    VStack {
      Text(pickBook.label)
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
    ChapterView(pickBook: PickBook(work: "Old Testament"))
  }
}
