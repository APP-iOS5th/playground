// 배열 요소 생성

var moviesToWatch: Array<String> = Array()

moviesToWatch.append("The shawshank Redemption")
moviesToWatch.append("Ghorsbuster")
moviesToWatch.append("Terminator")

print(moviesToWatch)
print(moviesToWatch.count) //요소의 갯수

moviesToWatch.insert("The Matrix", at: 2) //2째 요소에 push
print(moviesToWatch)

print(moviesToWatch.first ?? "Emty") // 첫번째 요소
print(moviesToWatch.last ?? "Emty") // 마지막 요소


// 배열 특정 요소 접근 및 수정
let secondMovieToWatch = moviesToWatch[1]
moviesToWatch[1] = "고스트버스터 (1984)"
print(moviesToWatch.count)
print(moviesToWatch)

let spyMovieSuggestions: [String] = ["The Bourne Identity", "Casino Royale", " Mission Inpossible"]
// 배열의 덧셈
moviesToWatch = moviesToWatch + spyMovieSuggestions
print(moviesToWatch.count)
print(moviesToWatch)

// 반복 요소로 배열 초기화 및 수정 (repeating -> 바복시 앞에 들어가는 글, count -> 반복하는 횟수)
var startWarsTrilogy = Array<String>(repeating: "Star Wars: ", count: 3)
startWarsTrilogy[0] += "A new hope"
startWarsTrilogy[1] += "Empire Strikes Back"
startWarsTrilogy[2] += "Return of the Jedi"
print(startWarsTrilogy)

// 특정 범위의 요소 교체 ->moviesToWatch 요소에 2~4번째 인덱스 요소를 startWarsTrilogy로 변경함
moviesToWatch.replaceSubrange(2...4, with: startWarsTrilogy)
print(moviesToWatch.count)

// 마지막 요소 제거 -> 요소를 제거 하고 던짐
let a = moviesToWatch.remove(at: 6)
print(moviesToWatch.count)
print(a)
