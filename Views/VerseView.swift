//
//  VerseView.swift
//  RandomScriptures
//
//  Created by Max Evans on 1/28/22.
//

import SwiftUI

struct VerseView: View {
  var pickBook: PickBook
  @State private var isShowingVerseView = false
  var body: some View {
    let verseData = VerseData(pickBook: pickBook)
    
    NavigationView {
      VStack {
      Text(verseData.verseTupel.1)
        .padding()
        .navigationTitle(verseData.verseTupel.0)
        NavigationLink(destination: ChapterView(verseData: verseData), isActive: $isShowingVerseView) {  }
          Button("Show Context") {
            isShowingVerseView = true
          }
      }
    }
  }
  }


struct VerseView_Previews: PreviewProvider {
  static var previews: some View {
    VerseView(pickBook: PickBook(book: "1 Nephi 1"))
  }
}
