//
//  VerseView.swift
//  RandomScriptures
//
//  Created by Max Evans on 1/28/22.
//

import SwiftUI

struct VerseView: View {
  var work: String
  @State private var isShowingVerseView = false
  var body: some View {
    let pickBook = PickBook(work: work)
    NavigationView {
      VStack {
        Text(pickBook.verse)
        .padding()
        .navigationTitle(pickBook.label)
        NavigationLink(destination: ChapterView(pickBook: pickBook), isActive: $isShowingVerseView) {  }
          Button("Show Context") {
            isShowingVerseView = true
          }
      }
    }
  }
  }


struct VerseView_Previews: PreviewProvider {
  static var previews: some View {
    VerseView(work: "Old Testameent")
  }
}
