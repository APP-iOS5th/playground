import UIKit

var moviesToWatch: [String] = []

moviesToWatch.append("The Shawshank Redemption")
moviesToWatch.append("Ghostbusters")
moviesToWatch.append("Terminator 2")

print(moviesToWatch[1]) // Ghostbusters
print(moviesToWatch.count) // 3

moviesToWatch.insert("The Matrix", at: 2)
// 터미네이터를 뒤로 밀고 매트릭스를 추가한다.
print(moviesToWatch.first ?? "Empty")
print(moviesToWatch.last ?? "Empty")

let secondMovieToWatch = moviesToWatch[1]
moviesToWatch[1]  = "Ghostbusters (1984)"
print(moviesToWatch.count) // 4
print(moviesToWatch) // 영화 1개 추가

// 배열을 합치기
let spyMovieSuggestions: [String] = ["The Bourn Identity", "Casino Royale", "Mission Impossible"]
moviesToWatch = moviesToWatch + spyMovieSuggestions
print(moviesToWatch.count) // 7
print(moviesToWatch) // 영화 3개가 추가됨

// 서브 제목만 추가하는 경우
var starWarsTrilogy = [String](repeating: "Star Wars: ", count: 3)
starWarsTrilogy[0] += "A New Hope" // Star Wars에 String을 붙여줘야 하기 때문에 += 을 사용
starWarsTrilogy[1] += "Empire Strikes Back"
starWarsTrilogy[2] += "Return of the Jedi"
print(starWarsTrilogy)

// 2~4까지의 배열을 starWarsTrilogy의 배열에 있는 내용으로 대체
moviesToWatch.replaceSubrange(2...4, with: starWarsTrilogy)
print(moviesToWatch.count)

// 6번째 인덱스인 미션임파서블을 지운다. 배열의 갯수가 줄었다.
moviesToWatch.remove(at: 6)
print(moviesToWatch.count) // 6
