import UIKit

var greeting = "Hello, playground"

let phrase: String = "The quick brown fox jumps over the lazy dog"

//phrase = "Modification" #상수라서 변경할수 없다 라고뜸

greeting = "Modification"


//타입 지정
let numberOfFoxes: Int = 1
let numberOfAnimals: Int = 2
let averageCharactersPerword: Float = (3+5+5+3+5+4+3+4+3) / 9

//변경할수없는 가져다가 변경할수 있게 지정하는것
var anotherPhrase = phrase

anotherPhrase = "Modification"
//표현식이 모든 결과물이 만들어진 후에 변환되는 것이기 때문에 (우항은 여러가지 기능들을 해도 무방함)
//저장되는 값은 변경되지 않는다.
var phraseInfo  = "The phrase" + "has: "
print(phraseInfo)

phraseInfo = phraseInfo + "\(numberOfFoxes) for and \(numberOfAnimals) animals"
print(phraseInfo)
//문자열이라는 객체에 count를 하고싶다 라는 의미
print("Number of charactes in phrase: \(phrase.count)")
//swift는 타입추론이 가능하기에 지정하지 않아도됨.
let multilineExplanation = """
Why is the following phrase often used?
"The quick brown fox jumps over the lazy dog"
This phrase contains every letter in the alphabet.
"""

//boolean
let phraseAreEqual = phrase == anotherPhrase
print(phraseAreEqual) //False

let phraseHas43Characters = phrase.count == 40+3
print(phraseHas43Characters)

var dayOfTheWeek : String = "Monday"
//swift자체에서 Null 값을 받지 못하도록 되어있음 컴파일오류발생함(좋네)
dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wednesday"
//dayOfTheWeek = nil

//optional 선언
var numberOfFingerHeldUpByFinn: Int?
numberOfFingerHeldUpByFinn = nil
numberOfFingerHeldUpByFinn = 3

//print(numberOfFingerHeldUpByFinn)
// warning이 뜨는데 optinal이면 주의가 들어가서 nul일수도있다고 얘기해줌

//null대신에 내가 미리 정의한 문자열을 출력해줘
//??를 넣은순간 nul의 가능성이 제거되서 optional표시가 안나옴
print(numberOfFingerHeldUpByFinn ?? "Unknown")

let lastNumberOfFingerHeldUpByFinn: Int = numberOfFingerHeldUpByFinn! //위험할수있음 (nul값이라면)

//function 정의
func fullName(givenName: String, middleName: String, familyName:String) -> String{
    return "\(givenName) \(middleName) \(familyName)"
}

// fullName함수 실행부
let myFullName = fullName(givenName: "yehjin", middleName: "christina",familyName: "Jang");
print(myFullName)


// _ 을 하는이유: 값을 전달할때 선택적으로 무시가능하다 (label이 없는 것으로 인식
func combine (_ givenName: String , _ familyName: String) -> String {
    return "\(givenName) \(familyName)"
}

func combine(_ integer1:Int, _ integer2: Int ) -> Int{
    return integer1 + integer2
}

let combineString = combine ("finnley","moon")
let combineInt = combine(5,10)

print(combineString)
print(combineInt)

class Person {
    let givenName: String
    let middleName: String
    let familyName: String
//    3가지의 상수 property를만들어주고
    var countryOfResidence: String = "KR"


    init(givenName: String, middleName: String, familyName: String){
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
    }
    
    func fullName() -> String{
        return "\(givenName) \(middleName) \(familyName)"
    
    }
    var displayString : String {
        return "\(fullName()) - Location: \(countryOfResidence))"
    }
    
}


//변수로 클래스를 만들어줄수있음(class instance) > 이걸해야 메모리에 올라가서 실행할수있는 객체가 생성되는 것임
var person = Person(givenName: "Yehjin", middleName: "yeddy", familyName:"Jang")

// 만약? 가족관계도를 만드는 서비스라면?
// person 이라고하는 것. 보다 상세한 기록이 가능하다는 것
final class Family:Person {
    let relationship : String
    
    init (givenName: String,
          middleName: String,
          familyName: String,
          relationship:String) {
        self.relationship = relationship
        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
    }
    
    
}
var family = Family(givenName: "yehjin", middleName: "yeddy", familyName: "Jang", relationship: "Daughter")


// 참조타입의 작동 방식
//값 자체를 직접 옮겨담아서 수행하는게 아니고 주소만 가져와서 원래 데이터가 바뀌면 참조하는 곳에서 보면 바껴있음 (유지X)
//그러나 참조하는 것을 옮기지 않아도 되는 장점(가벼움)
class MovieReview{
    let movieTitle: String
    var starRating: Int
    init(movieTitle: String , starRating: Int){
        self.movieTitle = movieTitle
        self.starRating = starRating
    }
}

let shawshankReviewOnYourWebsite = MovieReview (movieTitle: "shawshank Redemption",
                                                starRating: 3 )
//소셜미디어에 게시
let referenceToReviewOnTwitter = shawshankReviewOnYourWebsite
let referenceToReviewOnFacebook = shawshankReviewOnYourWebsite

shawshankReviewOnYourWebsite.starRating = 5
// 변경사항이 모든 참조에 반영됨


//열거형

// enumeration값에 다른 함수를 추가할수있는 신기한 언어 수위푸투!
enum Title: String {
    case mr = "Mr"
    case mrs = "Mrs"
    case mister = "Mister"
    case miss = "Miss"
    case dr = "Dr"
    case prof = "Prof"
    case other
    
    func isProfessional() -> Bool {
        return self == Title.dr || self == Title.prof
    }
           
}
let title1 = Title.mr

print(title1.isProfessional) //False


//closure(클로저)
let printAuhorDetails: () -> Void = {
    let nam
}

