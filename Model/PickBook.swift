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

/*
struct VerseData {
  var pickBook: PickBook
  var verseTupel = ("", "")
  var verseStrings: [String] = [String]()
  init(pickBook: PickBook) {
    self.pidkBook = pickBook
    verseTupel = pickBook.verseTuple
    self.verseStrings = pickBook.verseStrings
  }
}
 */
 /*
struct RandomVerse {
  var standardWorks: StandardWorks
  var randomVerseInt = 0
  var chapter = ""
  init(standardWorks: StandardWorks){
    self.standardWorks = standardWorks
    self.randomVerseInt = standardWorks.randomVerseInt
    self.chapter = standardWorks.chapter
  }
}
  */

struct PickBook {
  var standardWorks: StandardWorks
  var book = ""
  private var verses: [Verse] { getVerses() }
  private var randomScriptureInt = 0 // { randomTextNumer(verses) }
  var label: String { getVerseLabel(verses) }
  var verse: String { getVerse() }
  var verseStrings: [String] { getStringVerses() }
  
  init(standardWorks: StandardWorks) {
    self.standardWorks = standardWorks
    self.book = standardWorks.chapter
    self.randomScriptureInt = standardWorks.randomVerseInt
  }
  
  private func jsonData() -> Data? {
    if let URL = Bundle.main.url(forResource: book, withExtension: "json") {
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
    if let jsonData = jsonData {
      do {
        verses = try JSONDecoder().decode([Verse].self, from: jsonData)
      } catch {
        print(error)
      }
      return verses
    } else {
      print("No json data")
    }
    // let returnVerse = Verse(reference: "The cat is best", text: "Tada", verse: 6)
    return []
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
  func getVerseLabel(_ verses: [Verse] ) -> String {
    let verse = verses[randomScriptureInt]
    return verse.reference
    
  }
  
  func getVerse() -> String {
    return getStringVerses()[randomScriptureInt]
  }
}



