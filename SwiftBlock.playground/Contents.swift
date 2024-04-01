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


//MARK: - 배열(arrays)로 데이터 정렬

//배열에 저장된 데이터는 메모리 영역에 연속된 순서대로 저장된다.

//1. 배열 생성 및 요소 추가
var watch = [String]()
var moviesToWatch: Array<String> = Array()
moviesToWatch.append("The Shawshank Redemption")
moviesToWatch.append("Ghostbusters")
moviesToWatch.append("Terminator 2")

//2. 배열의 요소 출력 및 요소 수 확인
print(moviesToWatch[0]) // "The Shawshank Redemption"
print(moviesToWatch[1]) // "Ghostbusters"
print(moviesToWatch[2]) // "Terminator 2"
print(moviesToWatch.count) // 3

//3. 배열에 새 요소 삽입
moviesToWatch.insert("The Matrix", at: 2)

//4. 첫 번째 및 마지막 요소 접근
let firstMovieToWatch = moviesToWatch.first
let lastMovieToWatch = moviesToWatch.last
print(firstMovieToWatch as Any)
print(lastMovieToWatch as Any)

//5. 특정 요소 접근 및 수정
let secondMovieToWatch = moviesToWatch[1]
moviesToWatch[1] = "Ghostbusters (1984)"
print(moviesToWatch.count)
print(moviesToWatch)

//6. 새 배열 생성 및 배열 결합
let spyMovieSuggestions: [String] = ["The Bourne Identity", "Casino Royale", "Mission Impossible"]
moviesToWatch = moviesToWatch + spyMovieSuggestions
print("moviesToWatch : \(moviesToWatch.count)")
print("moviesToWatch : \(moviesToWatch)")

//7. 반복 요소로 배열 초기화 및 수정
var starWarsTrilogy = Array<String>(repeating: "Star Wars: ", count: 3)
starWarsTrilogy[0] += "A New Hope"
starWarsTrilogy[1] += "Empire Strikes Back"
starWarsTrilogy[2] += "Return of the Jedi"
print(starWarsTrilogy)

//8. 특정 범위의 요소 교체
moviesToWatch.replaceSubrange(2...4, with: starWarsTrilogy)
print(moviesToWatch.count)
print(moviesToWatch)

//9. 마지막 요소 제거
moviesToWatch.remove(at: 6)
print(moviesToWatch.count)
print(moviesToWatch)
