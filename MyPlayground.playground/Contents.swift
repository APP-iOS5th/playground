import UIKit

var greeting = "Hello, playground"

let phrase: String = "The quick brown fox jumps over the lazy dog"

greeting = "Modification"

let numberOfFoxes: Int  = 1
let numberOfAnimals: Int  = 2

let averageChractersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9

var anotherPhrase = phrase

anotherPhrase = "Modification"

var phraseInfo = "The phrase" + " has: "
print(phraseInfo)

phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
print(phraseInfo)

print("Number of chracters in phrase: \(phrase.count)")

let multilineExplanation = """
why is the following phrase often used?
"The quick brown fox jumps over the lazy dog"
This phrase contains every letter in the alphabet.
"""

let phrasesAreEqual = phrase == anotherPhrase
print(phrasesAreEqual)

let phraseHas43Characters = phrase.count == 40 + 3
print(phraseHas43Characters)
