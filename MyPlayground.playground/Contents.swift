// 최광우꺼
// 2024-04-01

import UIKit

protocol Saveable {
    var saveNeeded: Bool { get set }
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void)
}

class Person: Saveable {
    var saveHandler: ((Bool) -> Void)?
    var saveNeeded: Bool = true
    
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void) {
        saveHandler = handler
        
        saveComplete(success: true)
    }
    
    func saveComplete(success: Bool) {
        saveHandler?(success)
    }
}
/*
 MARK: - Closer 서순
 1. Person Class 생성 MARK: let person = Person()
 2. Person Class의 saveToRemoteDatabase를 실행 ->
 MARK: person.saveToRemoteDatabase { boolValue in
 MARK:     if boolValue {
 MARK:          print("TRUE")
 MARK:      } else {
 MARK:          print("FALSE")
 MARK:      }
 MARK: }
 MARK: 이거는 func person.saveToRemoteDatabase(Bool: boolValue) {} 이거랑 같아 보인다.
 3. 아무튼 저 함수를 (handler: @escaping (Bool) -> Void) 저기다가 집어 넣어준다
 4. 함수를 인자로 보낸다 라고 이해하면 될듯
 */

// MARK: - Tuple
func normalizedStarRating(forRating rating: Float, ofPossibleTotal total: Float) -> (Int, String) {
    let fraction = rating / total
    let ratingOutOf5 = fraction * 5
    let roundedRating = Int(round(ratingOutOf5))
    let ratingStar = String(repeating: "*", count: roundedRating)
    
    return (roundedRating, ratingStar)
}

let rate = normalizedStarRating(forRating: 3, ofPossibleTotal: 5)

// MARK: - Collection
// Array
var moviesToWatch: Array<String> = Array()
moviesToWatch.append("Dark Knight")
moviesToWatch.append("New World")
moviesToWatch.append("Harry Porter")

moviesToWatch.insert("The Matrix", at: 0) // 안좋음 - 과정이 복잡할 수 있음

let spyMovieSuggestions: [String] = [
    "The Bourne Identity", "Casino Royale", "Mission Impossible"
]
moviesToWatch += spyMovieSuggestions

var starWarsTrilogy = Array<String>(repeating: "Star Wars: ", count: 3)
starWarsTrilogy[0] += "A New Hope"
starWarsTrilogy[1] += "Empire Strikes Back"
starWarsTrilogy[2] += "Return Of the Jedi"

moviesToWatch.replaceSubrange(2...4, with: starWarsTrilogy)

print(moviesToWatch.count)
moviesToWatch.remove(at: 2)
print(moviesToWatch.count)

