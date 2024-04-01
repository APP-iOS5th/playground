import UIKit

// 1. 배열 생성. 객체 이니셜라이져
var moviesToWatch: Array<String> = Array()

// 2. 배열 요소 추가.
moviesToWatch.append("The Shawshank Redemption")
moviesToWatch.append("Ghostbusters")
moviesToWatch.append("Terminator 2")

// 3. 배열의 특정 요소 출력.
print(moviesToWatch[1])

// 배열의 요소 수 출력.
print(moviesToWatch.count)

// 4. 배열에 새 요소 추가.
moviesToWatch.insert("The Matrix", at: 2)

// 5. 배열의 첫 번째, 마지막 요소 접근(출력).
// 왜 첫 번째와 마지막 요소를 불러오는데 옵셔널일까?
// -> 베열이 있을 수도 없을 수 있는데 first last는 수행되야 하기 때문에 이것들은 옵셔널 벨류.
print(moviesToWatch.first ?? "Empty")
print(moviesToWatch.last ?? "Empty")

// 6. 배열의 특정 요소 접근 및 수정.
let secondMovieToWatch = moviesToWatch[1]
moviesToWatch[1] = "Ghostbusters (1984)"
print(moviesToWatch.count)
print(moviesToWatch)

// 7. 세 배열 생성 : 1과 같지만 방법의 차이.
let spyMovieSuggestions: [String] = ["The Bourne Identity", "Casino Royale", "Mission Impossible"]

// 8. 배열의 결합(덧셈).
moviesToWatch = moviesToWatch + spyMovieSuggestions
print(moviesToWatch.count)
print(moviesToWatch)

// 9. 반복 요소로 배열 초기화 및 수정.
// += 를 사용하는 이유.
// 9-1. repeating + starWarsTrilogy[index]를 해주기 때문.
// 9-2. = 이 아니라 +=을 사용하는 이유는 Star Wars: 에 String을 붙여야하기 때문.
// 9-3. 이유는 기존 문자열에 추가적인 문자열을 붙이기 위함.
var starWarsTrilogy = Array<String>(repeating: "Star Wars: ", count: 3)
starWarsTrilogy[0] += "A New Hope"
starWarsTrilogy[1] += "Empire Strikes Back"
starWarsTrilogy[2] += "Return of the Jedi"
print(starWarsTrilogy)

// 10. 배열의 특정 범위의 요소 교체.
moviesToWatch.replaceSubrange(2...4, with: starWarsTrilogy)
print(moviesToWatch.count)
print(moviesToWatch)

// 11. 배열의 마지막 요소 제거. (툭정 요소를 제거하려면 at:index, 지운건 튀어나온다?)
moviesToWatch.remove(at: 6)
print(moviesToWatch.count)
print(moviesToWatch)
