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

struct PickBook {
  var book: String
  private var verses: [Verse] { getVerses() }
  var randomScriptureInt: Int { randomNummberInBook(verses) }
  
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
  func verseName() -> String {
    return verses[randomScriptureInt].reference
  }
  
  func randomNummberInBook(_ verses: [Verse]) -> Int {
    return Int.random(in: 1...verses.count)
  }
}



