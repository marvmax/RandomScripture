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


struct RandomVerse {
  var work: String
  //var standardWorks: StandardWorks
  //var pickBook: PickBook
  init(work: String) {
    self.work = work
    var standardWorks = StandardWorks(work: work)
    var pickBook = PickBook()
  }
  }
 */
  

struct PickBook {
  var work: String
  var bookInt = 0//standardWorks.getBook(standardWork: work)
  var book = ""///standardWorks.getChapter(arrayAcess: bookInt)
  var randomScriptureInt = 0 //standardWorks.randomVerseInt(chapter: book, arrayAccess: bookInt) // { randomTextNumer(verses) }
  var verses: [Verse] { getVerses() }
  var label: String { getVerseLabel(verses) }
  var verse: String { getVerse() }
  var verseStrings: [String] { getStringVerses() }
  
  public init(work: String) {
    self.work = work
    let standardWorks = StandardWorks(work: self.work)
    self.bookInt = standardWorks.getBook(standardWork: self.work)
    self.book = standardWorks.getChapter(arrayAcess: bookInt)
    self.randomScriptureInt = standardWorks.randomVerseInt(chapter: book, arrayAccess: bookInt)
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
      var newString = "\(count). " + verse.text
      newString = newString.trimmingCharacters(in: .whitespaces)
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



