//
//  ChapterArray.swift
//  RandomScriptures
//
//  Created by Max Evans on 2/1/22.
//

import Foundation

struct StandardWorks {
  var work: String
  var chapter: String { getChapter(arrayAcess: getBook(standardWork: work))}
  var standardWorks = ["Standard Works", "Old Testament", "New Testament", "Book of Mormon", "Doctrine and Covenants", "Pearl of Great Price"]
  
  let oldTestamentBooks = ["Genisis",
                      "Exodus",
                      "Leviticus",
                      "Numbers",
                      "Deuteronomy",
                      "Joshua",
                      "Judges",
                      "Ruth",
                      "1 Samuel",
                      "2 Samuel",
                      "1 Kings",
                      "2 Kings",
                      "1 Chronicles",
                      "2 Chronicles",
                      "Ezra",
                      "Nehemiah",
                      "Esther",
                      "Job",
                      "Psalms",
                      "Proverbs",
                      "Ecclesiastes",
                      "Song of Solomon",
                      "Isaiah",
                      "Jeremiah",
                      "Lamentations",
                      "Ezekiel",
                      "Daniel",
                      "Hosea",
                      "Joel",
                      "Amos",
                      "Obadiah",
                      "Johah",
                      "Micah",
                      "Nahum",
                      "Habakkuk",
                      "Zephaniah",
                      "Haggai",
                      "Zechariah",
                      "Malachi"
  ]

  
  let oldTestamentChapters = ["Genisis": 50,
                      "Exodus": 40,
                      "Leviticus": 27,
                      "Numbers": 36,
                      "Deuteronomy": 34,
                      "Joshua": 24,
                      "Judges": 21,
                      "Ruth": 4,
                      "1 Samuel": 31,
                      "2 Samuel": 24,
                      "1 Kings": 22,
                      "2 Kings": 25,
                      "1 Chronicles": 29,
                      "2 Chronicles": 36,
                      "Ezra": 10,
                      "Nehemiah": 13,
                      "Esther": 10,
                      "Job": 42,
                      "Psalms": 150,
                      "Proverbs": 31,
                      "Ecclesiastes": 12,
                      "Song of Solomon": 8,
                      "Isaiah": 66,
                      "Jeremiah": 52,
                      "Lamentations": 5,
                      "Ezekiel": 48,
                      "Daniel": 12,
                      "Hosea": 14,
                      "Joel": 3,
                      "Amos": 9,
                      "Obadiah": 1,
                      "Johah": 4,
                      "Micah": 7,
                      "Nahum": 3,
                      "Habakkuk": 3,
                      "Zephaniah": 3,
                      "Haggai": 2,
                      "Zechariah": 14,
                      "Malachi": 4
  ]
  
  let versesOT = [[31, 25, 24, 26, 32, 22, 24, 22, 29, 32, 32, 12, 18, 24, 21, 16, 27, 33, 38, 18, 34, 24, 20, 67, 34, 35, 46, 22, 29, 43, 55, 32, 20, 21, 29, 43, 36, 30, 23, 23, 57, 38, 34, 34, 28, 34, 31, 22, 33, 26], // Genisis
  [22, 25, 22, 31, 23, 30, 25, 32, 35, 29, 10, 51, 22, 31, 27, 36, 16, 27, 25, 26, 36, 31, 33, 18, 40, 37, 21, 43, 46, 38, 18, 35, 23, 34, 35, 38, 29, 31, 43, 38], // Exodus
  [17, 16, 17, 35, 19, 30, 38, 36, 24, 20, 47, 8, 59, 57, 33, 34, 16, 30, 37, 27, 24, 33, 44, 23, 55, 46, 34], // Levitcus
  [54, 34, 51, 49, 31, 27, 89, 26, 23, 36, 35, 16, 33, 45, 41, 50, 13, 32, 22, 29, 35, 41, 30, 25, 18, 65, 23, 31, 40, 16, 54, 42, 56, 29, 35, 13], //Numbers
  [26, 37, 29, 49, 33, 25, 26, 20, 29, 22, 32, 32, 18, 29, 23, 22, 20, 22, 21, 20, 23, 30, 25, 22, 19, 19, 26, 68, 29, 20, 30, 52, 29, 12], // Deuteronomy
  [18, 24, 17, 24, 15, 27, 26, 35, 27, 43, 23, 24, 33, 15, 63, 10, 18, 28, 51, 9, 45, 34, 16, 33], // Joshua
  [36, 23, 31, 24, 31, 40, 25, 35, 57, 18, 40, 15, 25, 20, 20, 31, 13, 31, 30, 48, 25], // Judges
  [22, 23, 18, 22], // Ruth
  [28, 36, 21, 22, 12, 21, 17, 22, 27, 27, 15, 25, 23, 52, 35, 23, 58, 30, 24, 42, 15, 23, 29, 22, 44, 25, 12, 25, 11, 31, 13], // 1 Samuel
  [27, 32, 39, 12, 25, 23, 29, 18, 13, 19, 27, 31, 39, 33, 37, 23, 29, 33, 43, 26, 22, 51, 39, 25], // 2 Samuel
  [46, 28, 28, 34, 18, 38, 51, 66, 28, 29, 43, 33, 34, 31, 34, 34, 24, 46, 21, 43, 29, 53], // 1 Kings
  [18, 25, 27, 44, 27, 33, 20, 29, 37, 36, 21, 21, 25, 29, 38, 20, 41, 37, 37, 21, 26, 20, 37, 20, 30], // 2 Kings
  [54, 55, 24, 43, 26, 81, 40, 40, 44, 14, 47, 40, 14, 17, 29, 43, 27, 17, 19, 8, 30, 19, 32, 31, 32, 34, 21, 30], // 1 Chronicles
  [17, 18, 17, 22, 14, 42, 22, 18, 31, 19, 23, 16, 22, 15, 19, 14, 19, 34, 11, 37, 20, 12, 21, 27, 28, 23, 9, 27, 36, 27, 21, 33, 25, 33, 27, 23], // 2 Chronicles
  [11, 70, 13, 24, 17, 22, 28, 36, 15, 44], // Ezra
  [11, 20, 32, 23, 19, 19, 73, 18, 38, 39, 36, 47, 31], // Nehemiah
  [22, 23, 15, 17, 14, 14, 10, 17, 32, 3], // Esther
  [22, 13, 26, 21, 27, 30, 21, 22, 35, 22, 20, 25, 28, 22, 35, 22, 16, 21, 29, 29, 34, 30, 17, 25, 6, 14, 23, 28, 25, 31, 40, 22, 33, 37, 16, 33, 24, 41, 30, 24, 34, 42], // Job
  [6, 12, 8, 8, 12, 10, 17, 9, 20, 18, 7, 8, 6, 7, 5, 11, 15, 50, 14, 9, 13, 31, 6, 10, 22, 12, 14, 9, 11, 12, 24, 11, 22, 22, 28, 12, 40, 22, 13, 17, 13, 11, 5, 26, 17, 11, 9, 14, 20, 23, 29, 9, 6, 7, 23, 13, 11, 11, 17, 12, 8, 12, 11, 10, 13, 20, 7, 35, 36, 5, 24, 20, 28, 23, 10, 12, 20, 72, 13, 19, 16, 8, 18, 12, 13, 17, 7, 18, 52, 17, 16, 15, 5, 23, 11, 13, 12, 9, 9, 5, 8, 28, 22, 35, 45, 48, 43, 13, 31, 7, 10, 10, 9, 8, 18, 19, 2, 29, 176, 7, 8, 9, 4, 8, 5, 6, 5, 6, 8, 8, 3, 18, 3, 3, 21, 26, 9, 8, 24, 13, 10, 7, 12, 15, 21, 10, 20, 14, 9, 6], // Psalms
  [33, 22, 35, 27, 23, 35, 27, 36, 18, 32, 31, 28, 25, 35, 33, 33, 28, 24, 29, 30, 31, 29, 35, 34, 28, 28, 27, 28, 27, 33, 31], // Proverbs
  [18, 26, 22, 16, 20, 12, 29, 17, 18, 20, 10, 14], // Ecclesiastes
  [17, 17, 11, 16, 16, 13, 13, 14], // Song of Solomon
  [31, 22, 26, 6, 30, 13, 25, 22, 21, 34, 16, 6, 22, 32, 9, 14, 14, 7, 25, 6, 17, 25, 18, 23, 12, 21, 13, 29, 24, 33, 9, 19, 24, 17, 9, 22, 38, 22, 8, 31, 29, 25, 28, 28, 25, 13, 15, 22, 26, 11, 23, 15, 12, 17, 13, 12, 21, 14, 21, 22, 11, 12, 19, 12, 25, 24], // Isaish
  [19, 37, 25, 31, 31, 30, 34, 22, 26, 25, 23, 17, 27, 22, 21, 21, 27, 23, 15, 18, 14, 30, 40, 10, 38, 24, 22, 17, 32, 24, 40, 44, 26, 22, 19, 32, 21, 28, 18, 16, 18, 22, 13, 30, 5, 28, 7, 47, 39, 46, 64, 34], // Jermiah
  [22, 22, 66, 22, 22], // Lamentations
  [28, 10, 27, 17, 17, 14, 27, 18, 11, 22, 25, 28, 23, 23, 8, 63, 24, 32, 14, 49, 32, 31, 49, 27, 17, 21, 36, 26, 21, 26, 18, 32, 33, 31, 15, 38, 28, 23, 29, 49, 26, 20, 27, 31, 25, 24, 23, 35], // Ezekiwl
  [21, 49, 30, 37, 31, 28, 28, 27, 27, 21, 45, 13], // Daniel
  [11, 23, 5, 19, 15, 11, 16, 14, 17, 15, 12, 14, 16, 9], // Hosea
  [20, 32, 21], // Joel
  [15, 16, 15, 13, 27, 14, 17, 14, 15], // Amos
  [21], // Obadiah
  [17, 10, 10, 11], // Johan
  [16, 13, 12, 13, 15, 16, 20], // Micha
  [15, 13, 19], // Nahum
  [17, 20, 19], // Habakkuk
  [18, 15, 20], // Zephaniah
  [15, 23], // Haggai
  [21, 13, 10, 14, 11, 16, 14, 23, 17, 10, 17, 14, 9, 21], //Zechariah
  [14, 17, 18, 6]] // Malachi
  
  let newTestamentBooks = ["Matthew",
                      "Mark",
                      "Luke",
                      "John",
                      "Acts",
                      "Romans",
                      "1 Corinthians",
                      "2 Corinthians",
                      "Galatians",
                      "Ephesians",
                      "Philippians",
                      "Colossians",
                      "1 Thessalonians",
                      "2 Thessalonians",
                      "1 Timothy",
                      "2 Timothy",
                      "Titus",
                      "Philemon",
                      "Hebrews",
                      "James",
                      "1 Peter",
                      "2 Peter",
                      "1 John",
                      "2 John",
                      "3 John",
                      "Jude",
                      "Revelations"
  ]
  
  let newTestamentChapters = ["Matthew": 28,
                      "Mark": 16,
                      "Luke": 24,
                      "John": 21,
                      "Acts": 28,
                      "Romans": 16,
                      "1 Corinthians": 16,
                      "2 Corinthians": 13,
                      "Galatians": 6,
                      "Ephesians": 6,
                      "Philippians": 4,
                      "Colossians": 4,
                      "1 Thessalonians": 5,
                      "2 Thessalonians": 3,
                      "1 Timothy": 6,
                      "2 Timothy": 4,
                      "Titus": 3,
                      "Philemon": 1,
                      "Hebrews": 13,
                      "James": 5,
                      "1 Peter": 5,
                      "2 Peter": 3,
                      "1 John": 5,
                      "2 John": 1,
                      "3 John": 1,
                      "Jude": 1,
                      "Revelations": 22
  ]
  
  let versesNT = [[25, 23, 17, 25, 48, 34, 29, 34, 38, 42, 30, 50, 57, 36, 38, 28, 27, 35, 30, 34, 46, 46, 39, 51, 46, 75, 66, 20], // Matthew
  [45, 28, 35, 41, 43, 56, 37, 38, 50, 52, 33, 44, 37, 72, 47, 20], //Mark
  [80, 52, 38, 44, 39, 49, 50, 56, 62, 42, 54, 59, 35, 35, 32, 31, 37, 43, 48, 47, 38, 22, 56, 53], //luke
  [51, 25, 36, 54, 47, 71, 53, 59, 41, 41, 57, 50, 38, 31, 27, 33, 26, 40, 42, 31, 25], //John
  [26, 47, 26, 37, 42, 15, 60, 40, 43, 48, 30, 25, 52, 28, 41, 40, 34, 28, 41, 38, 40, 30, 35, 27, 27, 32, 44, 31], //Acts
  [32, 29, 31, 25, 21, 23, 25, 39, 33, 21, 36, 21, 14, 23, 33, 27 ], //Romans
  [31, 16, 23, 21, 13, 20, 40, 13, 27, 33, 34, 31, 13, 40, 58, 24], //1 Corinthians
  [24, 17, 18, 18, 21, 18, 16, 24, 15, 18, 33, 21, 14], //2 Corinthians
  [24, 21, 29, 31, 26, 18], //Galatians
  [23, 22, 21, 32, 33, 24], // Ephesians
  [30, 30, 21, 23], // Philippians
  [29, 23, 25, 18], // Colossians
  [10, 20, 13, 18, 28], // 1 Thessalonians
  [12, 17, 18], // 2 Thessalonians
  [20, 15, 16, 16, 25, 21], // 1 Timothy
  [18, 26, 17, 22], // 2 Timothy
  [16, 15, 15], // Titus
  [25], // Philemon
  [14, 18, 19, 16, 14, 20, 28, 13, 28, 39, 40, 29, 25], // Hebrews
  [27, 26, 18, 17, 20], // James
  [25, 25, 22, 19, 14], // Peter 1
  [21, 22, 18], // Peter 2
  [10, 29, 24, 21, 21], // 1 John
  [13], // 2 John
  [14], // 1 John
  [25], // Jude
  [20, 29, 22, 11, 14, 17, 17, 13, 21, 11, 19, 12, 18, 20, 8, 21, 18, 24, 21, 15, 27, 21]] //Revelation
  
  
  let bookOfMormonBooks = ["1 Nephi",
                           "2 Nephi",
                           "Jacob",
                           "Enos",
                           "Jarom",
                           "Omni",
                           "Words of Mormon",
                           "Mosiah",
                           "Alma",
                           "Helaman",
                           "3 Nephi",
                           "4 Nephi",
                           "Mormon",
                           "Ether",
                           "Moroni"
       ]
  
  let bookOfMormonChapters = ["1 Nephi": 22,
                      "2 Nephi": 33,
                      "Jacob": 7,
                      "Enos": 1,
                      "Jarom": 1,
                      "Omni": 1,
                      "Words of Mormon": 1,
                      "Mosiah": 29,
                      "Alma": 63,
                      "Helaman": 16,
                      "3 Nephi": 30,
                      "4 Nephi": 1,
                      "Mormon": 9,
                      "Ether": 15,
                      "Moroni": 10
  ]
  
  let versesBoM = [[20, 24, 31, 38, 22, 6, 22, 38, 6, 22, 36, 23, 42, 30, 36, 39, 55, 25, 24, 22, 26, 31], // 1 Nephi
  [32, 30, 25, 35, 34, 18, 11, 25, 54, 25, 8, 22, 26, 6, 30, 13, 25, 22, 21, 34, 16, 6, 22, 32, 30, 33, 35, 32, 14, 18, 21, 9, 15], // 2 Nephi
  [19, 35, 14, 18, 77, 13, 27], // Jacob
  [27], // Enos
  [15], // Jarom
  [30], // Omni
  [18], // Words of Mormon
  [18, 41, 27, 30, 15, 7, 33, 21, 19, 22, 29, 37, 35, 12, 31, 15, 20, 35, 29, 26, 36, 16, 39, 24, 24, 39, 37, 20, 47], // Mosiah
  [33, 38, 27, 20, 62, 8, 27, 32, 34, 32, 46, 37, 31, 29, 19, 21, 39, 43, 36, 30, 23, 35, 18, 30, 17, 37, 30, 14, 17, 60, 38, 43, 23, 41, 16, 30, 47, 15, 19, 26, 15, 31, 54, 24, 24, 41, 36, 25, 30, 40, 37, 40, 23, 24, 35, 57, 36, 41, 13, 36, 21, 52, 17], // Alma
  [34, 14, 37, 26, 52, 41, 29, 28, 41, 19, 38, 26, 39, 31, 17, 25], //Helaman
  [30, 19, 26, 33, 26, 30, 26, 25, 22, 19, 41, 48, 34, 27, 24, 20, 25, 39, 36, 46, 29, 17,  14, 18, 6, 21, 33, 40, 9, 2, ], // 3 Nephi
  [49], // 4 Nephi
  [19, 29, 22, 23, 24, 22, 10, 41, 37], // Mormon
  [43, 25, 28, 19, 6, 30, 27, 26, 35, 34, 23, 41, 31, 31, 34], // Ether
  [4, 3, 4, 3, 2, 9, 48, 30, 26, 3]] // Moroni
  
  let doctrineAndCovenantsBooks = ["D&C"]
  
  let doctrineAndCovenantsSections = ["D&C": 138]
  
  let versesDC = [[39, 3, 20, 7, 35, 37, 8, 12, 14, 70, 30, 9, 1, 11, 6, 6, 9, 47, 41, 84, 12, 4, 7, 19, 16, 2, 18, 16, 50, 11, 13, 4, 18, 12, 27, 8, 4, 42, 24, 3, 12, 93, 35, 6, 75, 33, 4, 6, 28, 46, 20, 44, 7, 10, 6, 20, 16, 65, 24, 17, 39, 9, 66, 43, 6, 13, 14, 35, 8, 18, 11, 26, 6, 7, 36, 119, 15, 22, 4, 5, 7, 24, 83, 120, 12, 11, 8, 141, 21, 37, 6, 2, 53, 17, 17, 9, 28, 48, 8, 17, 101, 34, 40, 86, 41, 8, 100, 8, 79, 16, 11, 34, 10, 2, 19, 1, 16, 6, 7, 1, 46, 9, 17, 145, 4, 3, 11, 25, 9, 130, 8, 66, 74, 12, 7, 42, 10, 60]]
  
  let pearlOfGreatPriceBooks = ["Moses",
                                   "Abraham",
                                   "Articles of Faith",
                                   "Joseph Smith-History",
                                   "Joseph Smith-Matthew"
          ]
  
  let pearlOfGreatPriceChapters = ["Moses": 8,
                           "Abraham": 5,
                           "Articles of Faith": 13,
                           "Joseph Smith-History": 1,
                           "Joseph Smith-Matthew": 1
  ]
  
  let versesPoGP = [[42, 31, 25, 32, 59, 68, 69, 30], // Moses
  [31, 25, 28, 31, 21], // Abraham
  [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], // Articles of Faith
  [1], // Joseph Smith-History
  [11]] // Joseph Smith-Matthew
  
  private func getBook(standardWork work: String) -> Int {
    var acsess = 0
    var count: Int = -1
    if work == standardWorks[0] {
      acsess = Int.random(in: 0...4)
    } else {
      for work in standardWorks {
        if self.work == work {
          acsess = count
          break
        } else {
          count += 1
        }
      }
    }
    return acsess
  }
  
  func getChapter(arrayAcess: Int) -> String {
    let standardWorksBooks: [[String]] = [oldTestamentBooks, newTestamentBooks, bookOfMormonBooks, doctrineAndCovenantsBooks, pearlOfGreatPriceBooks]
    let standardWorksChapters = [oldTestamentChapters, newTestamentChapters, bookOfMormonChapters, doctrineAndCovenantsSections, pearlOfGreatPriceChapters]
    var scriptureInt = 0
    var bookName: String
    var bookChapter = 0
    if arrayAcess == 3 {
      bookName = "D&C"
      bookChapter = Int.random(in: 1...138)
      return "\(bookName) \(bookChapter)"
    } else {
      let work = standardWorksBooks[arrayAcess]
      let works = standardWorksChapters[arrayAcess]
      scriptureInt = Int.random(in: 1...work.count)
      bookName = work[scriptureInt]
      if let work = (works[bookName]) {
        bookChapter = work
      }
      bookChapter = Int.random(in: 1...bookChapter)
      return "\(bookName) \(bookChapter)"
    }
  }
}
