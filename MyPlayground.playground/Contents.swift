import UIKit

var greeting = "Hello, playground"

let phrase: String = "The quick brown fox jumps over the lazy dog"

greeting = "Modification"

//같은 값이라고 해도 이미 패키징이 끝난 상품이기 때문에 새로 값을 넣을 수 없다
//phrase = "The quick brown fox jumps over the lazy dog."

let numberOfFoxes: Int = 1
let numberOfAnimals: Int = 2

let averageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9

var anotherPhrase = phrase

anotherPhrase = "Modificaiton"

var phraseInfo = "The phrase" + " has: "
print(phraseInfo) // "The phrase has: "

phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"
print(phraseInfo) // "The phrase has: 1 fox and 2 animals

print("Number of characters in phrase: \(phrase.count)")

print("Number of characters in phrase: \(phrase.uppercased())")

let multilineExaplanation: String = """
Why is the following phrase often used?
"The quick brown fox jumps over the lazy dog"
This phrase contains every letter in the alphabet.
"""

let phrasesAreEqual = phrase == anotherPhrase
print(phrasesAreEqual) //false

let phraseHas43Characters = phrase.count == 40 + 3
print(phraseHas43Characters) //true


var dayOfTheWeek: String = "Monday"
dayOfTheWeek = "Tuseday"
dayOfTheWeek = "Wednesday"
//dayOfTheWeek = nil //컴파일 오류 발생
// 스위프트는 기본적으로 null을 못 쓰게 막음

var numberOfFingersHeldupByFinn: Int?
numberOfFingersHeldupByFinn = nil
numberOfFingersHeldupByFinn = 3

print(numberOfFingersHeldupByFinn ?? "")

let lastNumberOfFingersHeldUpByFinn: Int = numberOfFingersHeldupByFinn! //강제 언래핑. 위험할 수 있음
print(lastNumberOfFingersHeldUpByFinn)

//function 정의
func fullName(givenName: String, middleName: String, familyName:String) -> String {
    return "\(givenName) \(middleName) \(familyName)"
}
//함수를 선언했을 뿐 실행하지 않았으므로 아무 일도 일어나지 않음
//선언부 한군데만 고쳐주면 실행부가 모두 수정되므로 작업의 효율성이 증대됨. 함수를 쓰는 이유 중 1개!

//함수를 실행하는 것: 표현식. 표현식에는 등호가 들어간다!
let myFullName = fullName(givenName: "Keith", middleName: "David", familyName: "Moon");
//너무 길다
print(myFullName)

//함수 변경! 성을 모르는 사람도 이름을 출력해주는 함수로 변경해보자.

//함수 선언부에 등호가 들어가면, 만약 값이 없으면 ㅇㅇ로 채워줘라는 의미
func niceFullName(givenName: String, middleName: String = "Unknown", familyName:String) -> String {
    return "\(givenName) \(middleName) \(familyName)"
    }
    
let yourFullName = niceFullName(givenName: "Keith", familyName: "Moon");

print(yourFullName)
