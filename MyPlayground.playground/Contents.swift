
var moviesToWatch: Array<String> = Array()

moviesToWatch.append("The Shawshank Redemption")
moviesToWatch.append("Ghostbusters")
moviesToWatch.append("Terminator 2")

print(moviesToWatch[0])
print(moviesToWatch.count)

moviesToWatch.insert("The Matrix", at:2)

//빈 배열일때 실행하면 안되기때문에 옵셔널로 지정
print(moviesToWatch.first ?? "Empty")
print(moviesToWatch.last ?? "Empty")

let secondMovieToWatch = moviesToWatch[1]
moviesToWatch[1] = "Ghost busters (1984)"
print(moviesToWatch.count)
print(moviesToWatch)

let spyMovieSuggestions: [String] = ["The bourne", "Casino Royale", "Mission Impossible"]
moviesToWatch = moviesToWatch + spyMovieSuggestions
print(moviesToWatch.count)
print(moviesToWatch)


//배열을 초기화하면서 값 넣기
var starWarsTrilogy = Array<String>(repeating: "Star Wars", count: 3)
starWarsTrilogy[0] += "A New Hope"
starWarsTrilogy[1] += "Empire Strikes Back"
starWarsTrilogy[2] += "Return of the Jedi"
print(starWarsTrilogy)


//2~4번째 배열을 새롭게 변경
moviesToWatch.replaceSubrange(2...4, with: starWarsTrilogy)
print(moviesToWatch.count)

//해당하는 인덱스값을 제거
moviesToWatch.remove(at:6)
print(moviesToWatch.count)
print(moviesToWatch)a
