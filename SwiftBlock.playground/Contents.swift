import UIKit

//MARK: - 변수를 튜플(tuples)로 번들링

//1. 별점 정규화 함수 생성
func normalizedStarRating(forRating rating: Float, ofPossibleTotal total: Float) -> (Int, String) {
    let fraction = rating / total
    let ratingOutOf5 = fraction * 5
    let roundedRating = round(ratingOutOf5)
    let numberOfStars = Int(roundedRating)
    let ratingString = "\(numberOfStars) Star Movie"
    return (numberOfStars, ratingString) //튜플 반환
}

//2. 함수 호출 및 튜플 사용
let ratingAndDisplayString = normalizedStarRating(forRating: 5, ofPossibleTotal: 10)
let ratingNumber = ratingAndDisplayString.0
let ratingString = ratingAndDisplayString.1
