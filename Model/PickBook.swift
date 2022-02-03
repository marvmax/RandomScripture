//
//  PickBook.swift
//  RandomScriptures
//
//  Created by Max Evans on 1/25/22.
//
import Foundation

struct Verse: Codable, Hashable  {
  let reference: String
  let text: String
  let verse: Int
}

struct VerseData {
  var pidkBook: PickBook
  var verseTupel = ("", "")
  var verseStrings: [String] = [String]()
  init(pickBook: PickBook) {
    self.pidkBook = pickBook
    verseTupel = pickBook.verseTuple
    self.verseStrings = pickBook.verseStrings
  }
}

struct PickBook {
  
  var book: StandardWorks
  private var verses: [Verse] { getVerses() }
  private var randomScriptureInt: Int { randomTextNumer(verses) }
  // private var verseTuple: (lable: String, text: String) { getVerseData(verses)}
  var verseTuple: (label: String, verse: String) { getVerseData(verses)}
  //var verse: String { getVerseData(verses).1 }
  var verseStrings: [String] { getStringVerses() }
  
  init(book: StandardWorks) {
    self.book = book
  }
  
  private func jsonData() -> Data? {
    if let URL = Bundle.main.url(forResource: book.chapter, withExtension: "json") {
      do {
        return try Data(contentsOf: URL)
      } catch {
        print(error)
      }
    }
    return nil
  }
  
  private func getVerses() -> [Verse] {
    var verses: [Verse] = []
    let jsonData = jsonData()
    do {
      verses = try JSONDecoder().decode([Verse].self, from: jsonData!)
    } catch {
      print(error)
    }
    return verses
  }
  
  func getStringVerses() -> [String] {
    let verses = getVerses()
    var stringVerses: [String] = []
    var count = 1
    for verse in verses {
      let newString = "\(count). " + verse.text
      stringVerses.append(newString)
      count += 1
    }
    return stringVerses
  }
}

extension PickBook {
  func getVerseData(_ verses: [Verse] ) -> (String, String) {
    let verse = verses[randomScriptureInt]
    let label = verse.reference
    let text = verse.text
    let int = verse.verse
    let textWithNumber = "\(int). \(text)"
    return (label, textWithNumber)
  }
  
  func randomTextNumer(_ verses: [Verse]) -> Int {
      return Int.random(in: 1...verses.count)
    }
  
  func getVerse() -> String {
    return getStringVerses()[randomScriptureInt]
  }
}



