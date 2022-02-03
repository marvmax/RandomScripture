//
//  BookView.swift
//  RandomScriptures
//
//  Created by Max Evans on 1/25/22.
//

import SwiftUI

struct ChapterView: View {
  var verseData: VerseData
  var body: some View {
    //let pickBook = PickBook(book: book)
    let verses = verseData.verseStrings
    VStack {
      Text(verseData.verseTupel.0)
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
    ChapterView(verseData: VerseData(pickBook: PickBook(book: StandardWorks(work: "Old Testament"))))
  }
}
