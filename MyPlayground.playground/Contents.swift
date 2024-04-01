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
 MARK: 서순
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
print(rate.1)
