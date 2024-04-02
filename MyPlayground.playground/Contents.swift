
var moviestoWatch: Array<String> = Array()

moviestoWatch.append("The Shawshank Redemption")  // 0
moviestoWatch.append("Ghostbusters") // 1
moviestoWatch.append("Terminator 2") // 2

print(moviestoWatch[1])
print(moviestoWatch.count)

moviestoWatch.insert("The Matrix", at: 2)

print(moviestoWatch.first ?? "Empty")
print((moviestoWatch.last ?? "Empty"))


let secondMovietoWatch = moviestoWatch[1]
moviestoWatch[1] = "Ghostbusters (1984)"
print(moviestoWatch.count)
print(moviestoWatch)


let spyMovieSuggestions: [String] = ["The bourne Identity", "Casino Royale", "Mission Impossible"]

moviestoWatch = moviestoWatch + spyMovieSuggestions
print(moviestoWatch.count)
print(moviestoWatch)

var starWarsTrilogy = Array<String>(repeating: "Star Wars: ", count: 3)

starWarsTrilogy[0] += "A New Hope"
starWarsTrilogy[1] += "Empire Strikes Back"
starWarsTrilogy[2] += "Return of the Jedi"
print(starWarsTrilogy)


moviestoWatch.replaceSubrange(2...4, with: starWarsTrilogy)
print(moviestoWatch.count)

moviestoWatch.remove(at: 6)
print(moviestoWatch.count)
