import UIKit

var greeting = "Hello, playground"

// let 으로 정의한 변수는 불변하는 상수 & 예약어
let phrase: String = "The quick brown fox jumps over the lazy dog"

greeting = "Modification"

let numberOfFoxes: Int = 1
let numberOfAnimals: Int = 2

// 소수점 자리 계산
// 실제 계측을 하거나 할 때 사용하기 때문에 주의해서 사용하기
let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9

// 새로 할당하면 내가 얼마든지 let phrase 바꿔서 사용할 수 있음
var anotherPhrase = phrase

// 메모리에 새 공간을 재할당
anotherPhrase = "Modification"

var phraseInfo = "The phrase" + " has: "
print(phraseInfo)

// \() = 탈출어 • \n = new line = <br> • \t
phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
print(phraseInfo)

// count 는 property (문자열의 갯수)
// 객체는 프로퍼티와 메소드()를 갖고 있음
print("Number of characters in phrase: \(phrase.count)")

// Swift 는 정정 타입 언어 ✨
// 타입 선언을 해야 하며, 안 하는 경우는 추론 가능할 경우만!
let multilineExplanation: String = """
Why is the following phrase often used?
"The quick brown fox jumps over the lazy dog"
This phrase contains every letter in the alphabet.
"""

// 상수와 변수를 비교
let phrasesAreEqual = phrase == anotherPhrase
print(phrasesAreEqual)

// property 와 표현식을 비교
let phraseHas43Characters = phrase.count == 40 + 3
print(phraseHas43Characters)

// 스위프트 변수는 애초에 null 을 받지 못하게 설정해둠, 대신 옵셔널
var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wednesday"
// dayOfTheWeek = nil 컴파일 오류 발생

// Optional = 이 값은 비워져 있을 수도 있어 🤔
// 한번 Optional 은 영원한 Optional
var numberOfFingersHeldUpByFinn: Int?
numberOfFingersHeldUpByFinn = nil
numberOfFingersHeldUpByFinn = 3

// ?? 두개 쓰면 nil 대신 내가 정의한 애로 나와 (nil 가능성 제거)
print(numberOfFingersHeldUpByFinn ?? "Unknown")

// ! 로 강제 언래핑
// 없는 값을 강제로 있는 데에 넣으려고 하니까 위험할 수 있음 🔥
let lastNumberOfFingersHeldUpByFinn: Int = numberOfFingersHeldUpByFinn!

// 함수 (도 표현식임, 등호로 표시)
// middleName= "" <- 기본값을 넣어준거임
func fullName(givenName: String, middleName: String = " ", familyName: String) -> String {
    return "\(givenName) \(middleName) \(familyName)"
}

// (왼쪽) 상수에 할당 = 함수 실행부 (오른쪽)
let myFullName = fullName(givenName: "Keith", middleName: "David", familyName: "Moon")
print(myFullName)

