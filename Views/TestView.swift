//
//  TestView.swift
//  RandomScriptures
//
//  Created by Max Evans on 1/29/22.
//

import SwiftUI

struct TestView: View {
  var pickBook: PickBook
  var body: some View {
    let verseData = VerseData(pickBook: pickBook)
    NavigationView {
      Text(verseData.verseTupel.1)
        .padding()
        .navigationTitle(verseData.verseTupel.0)
      }
    }
  }

struct TestView_Previews: PreviewProvider {
  static var previews: some View {
    TestView(pickBook: PickBook(book: "1 Nephi 1"))
  }
}
