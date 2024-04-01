import UIKit

//chapter1
var greeting = "Hello, playground"

let phrase: String = "The quick brown for jiyong over the lazy dog" // let 불변(상수), 예약어, 특정 값을 저장하기, 가능하면 변경 불가, 변경되지 않고 함수안에서 사용,
greeting = "Modificlation"

//phrase = "The quick brown for jiyong over the lazy dog" // 변수 선언하고 같은 값이여도 다시 넣을수 없음

let numberOfFoxes: Int = 1 //정수형
let numberOfAnimals: Int = 2

let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3)/9 //부동소수점
var antherPharase = phrase // var 얼마든지 변경가능, 메모리에 재할당

antherPharase = "Modificlation"

var  pharseInfo = "The phrase" + " has: " // let으로 바꾸어도 계산후에 값을 저장하기 때문에 변경가능 이변수에서 좌측영역을 두번 사용불가
print(pharseInfo)

pharseInfo = pharseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals" // \()문자열 보관법 탈출어, 문자열안에서 특정문자를 사용하기 위해 \n(엔터 기능, 줄바꿈), \t()
print(pharseInfo)

print("Number of characters in phrase: \(phrase.count)") //count: 프로퍼티(속성), 문자열 수 출력해줌 ,P(프로퍼티), M(메소드)

let multilineExplanation = """
Why is the following phrase often used?
"The quick brown fox jumps over the lazy dog"
This phrase contains every letter in the alphabet.
""" // """ """: 엔터 치고 사용할 수 있음, 타입을 안써준이유 타입 추론이 가능해서

let phrasesAreEqul = phrase == antherPharase // ==: 비교연산자
print(phrasesAreEqul)

let phraseHase44Characters = phrase.count == 40+4
print(phraseHase44Characters)

