var moviesToWatch: Array<String> = Array()
moviesToWatch.append("1")
moviesToWatch.append("2")
moviesToWatch.append("3")
moviesToWatch.append("4")
moviesToWatch.append("5")

//var arr: Array<[String]> = Array(repeating: [], count: 2)
//arr[0].append("fd")
//arr[0].append("ff")
//print(arr.first ?? "Empty")

//var arr: [String] = []
//var arr: Array<String> = Array()
//var arr: Array<String> = Array<String>()

var starWars = Array<String>(repeating: "Star Wars: ", count: 3)
starWars[0] += "1"
starWars[1] += "2"
starWars[2] += "3"

moviesToWatch.replaceSubrange(2...4, with: starWars)

print(moviesToWatch)


