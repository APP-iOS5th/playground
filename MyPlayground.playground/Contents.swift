import Foundation
//Chapter2-2
/*
 집합: 중복허용하지 않음
 딕셔너리: key: value로 구성, 내가원하는 키 값만 가지고 오면 값을 가지고 옴,O(1), iOS에서 많이 사용
 */
//배열: O(n)
var movieToWatch: Array<String> = Array()

movieToWatch.append("The Shawshank Redemption") //append(): 배열에 추가하는 함수
movieToWatch.append("Ghostbusters")
movieToWatch.append("Terminaator 2")

print(movieToWatch[1])
print(movieToWatch.count)
movieToWatch.insert("The Matrix", at: 2) //insert("", at: )배열에 삽입

print(movieToWatch.first ?? "Empty") //배열에 0번째 요소 출력
print(movieToWatch.last ?? "Empty") //배열에 마지막 요소 출력

let secondMovieToWatch = movieToWatch[1]
movieToWatch[1] = "Ghostbuster (1984)"
print(movieToWatch.count)
print(movieToWatch)

let spyMovieSuggestions: [String] = ["The Bourne Identity", "Casino Royale", "Mission Impossible"]
movieToWatch = movieToWatch + spyMovieSuggestions
print(movieToWatch.count)
print(movieToWatch)
var starWarsTrilogy = Array<String>(repeating: "Star Wars: ", count: 3) //repeating 뒤에 들어가는거는 반복, count 반복 횟수
starWarsTrilogy[0] += "A New Hope"
starWarsTrilogy[1] += "Empire Strikes Back"
starWarsTrilogy[2] += "Return of the Jedi"
print(starWarsTrilogy)

movieToWatch.replaceSubrange(2...4, with: starWarsTrilogy) //replaceSubrange(): 2에서4번째 배열에 삽입
print(movieToWatch.count)


movieToWatch.remove(at: 6) //remove(at: ) 해당인덱스의 값 삭제
print(movieToWatch.count)
