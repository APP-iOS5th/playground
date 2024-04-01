// Array

var moviesToWatch: Array<String> = Array()

moviesToWatch.append("The Shawshank Redemption")
moviesToWatch.append("Ghostbusters")
moviesToWatch.append("Terminator 2")

moviesToWatch[0]
moviesToWatch[1]
moviesToWatch[2]
print(moviesToWatch.count)

moviesToWatch.insert("The Matrix", at: 2) // 기존 2번 내용을 뒤로 밀어내고 새롭게 추가됨

print(moviesToWatch.first ?? "Empty")
print(moviesToWatch.last ?? "Empty")

let secondMovieToWatch = moviesToWatch[1]
moviesToWatch[1] = "Ghostbusters (1984)"
print(moviesToWatch.count)
print(moviesToWatch)

let spyMovieSuggestion: [String] = ["The Bourne Indenty", "Casino Royale", "Mission Impossible"]
moviesToWatch = moviesToWatch + spyMovieSuggestion
print(moviesToWatch.count)
print(moviesToWatch)

var starWarsTrilogy = Array<String>(repeating: "Star Wars: ", count: 3)
starWarsTrilogy[0] += "A New Hope"
starWarsTrilogy[1] += "Empire Strikes Back"
starWarsTrilogy[2] += "Return of the Jedi"
print(starWarsTrilogy)

moviesToWatch.replaceSubrange(2...4, with: starWarsTrilogy) // [2]~[4] 범위에서 배열 교체
print(moviesToWatch.count)

moviesToWatch.remove(at: 6) // [6] 배열 값 삭제
print(moviesToWatch.count)
print(moviesToWatch)
