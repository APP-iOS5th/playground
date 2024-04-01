import Foundation


var moviesToWatch: Array<String> = Array()
moviesToWatch.append("The Shawshank Redemption")
moviesToWatch.append("Ghostbusters")
moviesToWatch.append("Terminator 2")

print(moviesToWatch[1])
print(moviesToWatch.count) // 3

moviesToWatch.insert("The Matrix", at: 2)

print(moviesToWatch.first ?? "")
print(moviesToWatch.last ?? "")


let secondMovieToWatch = moviesToWatch[1]
moviesToWatch[1] = "Ghostbusters (1984)"

print(moviesToWatch.count)
print(moviesToWatch)


let spyMovieSuggestions: [String] = ["The Bourne Identity", "Casino Royale", "Mission Impossible"]
moviesToWatch = moviesToWatch + spyMovieSuggestions
print(moviesToWatch.count)
print(moviesToWatch)

var starWarsTrilogy = Array<String>(repeating: "Star Wars: ", count: 3)
starWarsTrilogy[0] += "A New Hope"
starWarsTrilogy[1] += "Empire Strikes Back"
starWarsTrilogy[2] += "Return of the Jedi"
print(starWarsTrilogy)

moviesToWatch.replaceSubrange(2...4, with: starWarsTrilogy)
print(moviesToWatch.count)
print(moviesToWatch)

moviesToWatch.remove(at: 6)
print(moviesToWatch.count)
print(moviesToWatch)
