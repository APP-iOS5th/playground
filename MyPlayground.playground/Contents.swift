import UIKit

var greeting = "Hello, playground"

let phrase: String = "The quick brown fox jumps over the lazy dog"

greeting = "Modification"

let numberOfFoxes: Int = 1
let numberOfAnimals: Int = 2

let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9

var anotherPhrase = phrase //다른 변수에 재할당 하면 바꿀 수 있음

anotherPhrase = "Modification"

var phraseInfo = "The phrase" + " has: "
print(phraseInfo)

phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
print(phraseInfo)

// \n \t 탈출어?
// \ => 다음에 오늘 알파벳에 따라서 특수 기능 \n => new line    html의 <br> 과 같음

print("Number of characters in phrase: \(phrase.count)") // 프로퍼티 !== 메소드

let multilineExplanation: String = """
why is the following phrase often used?
"The quick brown fox jumps over the lazy dog"
This phrase contains every letter in the alphabet.
"""

print(multilineExplanation)

let phrasesAreEqual = phrase == anotherPhrase //원래는 비교하는 함수를 만들기도 했음 지금은 편하게 ==으로 비교 가능
print(phrasesAreEqual)

let phraseHas43Characters = phrase.count == 40 + 3
print(phraseHas43Characters)

//타입 추론이 가능해서 타입 지정을 안할 수 있음
//정적 타입 = 한 번 정의되면 다른 타입으로 변경 불가 => 자바스크립트와 결정적 차이 자바스크립트는 동적 타입

//nil ( optional) null을 쓸 수 있게 해주자 null이 없는 언어를 지향하지만 사용하려면 optional value를 써.
// 자동차 살 때 옵션, 있어도 되고 없어도 돼. 돈을 더 낼 뿐.

var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wednesday"
//dayOfTheWeek = nil //컴파일 오류

//코틀린? 스위프트를 따라하는 언어놈,,

var numberOfFingersHeldUpByFinn: Int? // ? => 없을 수도 있어 기본 타입은 nil 사용 불가지만 ? 사용하면 가능 Int 말고 string 등 다른 타입도 가능
numberOfFingersHeldUpByFinn = nil
numberOfFingersHeldUpByFinn = 3

print(numberOfFingersHeldUpByFinn) //너 주의해 이거 옵셔널이야

//print(numberOfFingersHeldUpByFinn ?? "Unknown") // 없을 때 표시하고 싶은 말 표시가능 ??두개면 옵셔널이 출력이 안돼 왜? ?? 를 넣은 순간 nil 의 가능성이 제거 되어서

//한번 기본 타입은 계속, 한번 옵셔널은 영원히 옵셔널인데,, ! 연산자

let lastNumberOfFingerHeldUpByFinn: Int = numberOfFingersHeldUpByFinn! //위험할 수 있음

print(lastNumberOfFingerHeldUpByFinn)


//void??

func fullName(givenName: String, middleName: String = "Unknown", familyName: String) -> String {
    return "\(givenName) \(middleName) \(familyName)"
}

let myFullName = fullName(givenName: "beom", /*middleName: "jun",*/ familyName: "hong")

print(myFullName)
//print(fullName(givenName: "1", middleName: "2", familyName: "3"))





















