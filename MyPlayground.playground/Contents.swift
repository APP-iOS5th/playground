import UIKit

var greeting = "Hello, playground"
let phrase: String = "The quick brown fox jumps over the lazy dog"

greeting = "Modification"
// phrase는 let으로 선언한 상수이기 때문에 수정을 하려고 하면 아래와 같은 오류메시지를 볼 수 있다.
// Cannot assign to value: 'phrase' is a 'let' constant
//phrase = "Modification"

let numberOfFoxes: Int = 1
let numberOfAnimals: Int = 2
let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9

var anotherPhrase = phrase
anotherPhrase = "Modification"

// 상수여도 동작, 오른쪽의 결과가 만들어진 후에 저장을 하기 때문에 var, let 다 가능하다.
var phraseInfo = "The phrase" + "has: "
print(phraseInfo)

phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
print(phraseInfo)
// .를 입력했을 때 보여지는 목록에 M과 P은 아래와 같다
// M : Method, P : Parameter 로 구분되고 테마를 사용해서 그런지 색상으로도 구분이 가능하다.
print("Number of chrachters in phrase: \(phrase.count)")
print("Number of chrachters in phrase: \(phrase.uppercased())")

// 장문으로 작성하는 방법 "를 3개씩 붙여주면 아래와 같이 작성할 수 있다.
let mulilineExplanation: String = """
Hello, World~ Hello, World~ Hello, World~ Hello, World~
Hello, World~ Hello, World~ Hello, World~ Hello, World~
Hello, World~ Hello, World~ Hello, World~ Hello, World~
"""

let phrasesAreEqual = phrase == anotherPhrase
print(phrasesAreEqual)

// = 의 오른쪽은 수식의 결과 값을 저장한다.
let phraseHas43Characters = phrase.count == 40 + 3
print(phraseHas43Characters)
