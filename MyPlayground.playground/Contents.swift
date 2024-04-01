
// 튜플

import Foundation

func normalizedStarRating(forRating rating: Float, ofPossibleTotal total: Float) -> (Int, String) {
    let fraction = rating / total
    let ratingOutOf5 = fraction * 5
    let roundedRating = round(ratingOutOf5)
    let numberOfStars = Int(roundedRating)
    let ratingString = "\(numberOfStars) Star Movie"
    return (numberOfStars,ratingString)
}


// 배열


var moviesToWatch: Array<String> = Array()

moviesToWatch.append("The Shawshank")
moviesToWatch.append("ghost busters")
moviesToWatch.append("goooood3")

moviesToWatch[1]

moviesToWatch.insert("why insert", at: 1)

moviesToWatch[1]

moviesToWatch.first

let secondMovieToWatch = moviesToWatch[1]
moviesToWatch[1] = "shinsaegye (1984)"
print(moviesToWatch.count)
print(moviesToWatch)


let spymovie: [String] = ["1","2","3"]
moviesToWatch = moviesToWatch + spymovie

print(moviesToWatch)

var starwarsTrilogy = Array<String>(repeating: "Star Wars: ", count: 3)
starwarsTrilogy[0] += "A New Hope"
starwarsTrilogy[1] += "Empire Strikes Back"
starwarsTrilogy[2] += "Return of the Jedi"

print(starwarsTrilogy)

moviesToWatch.replaceSubrange(2...4, with: starwarsTrilogy)
print(moviesToWatch)

moviesToWatch.remove(at: 6)
print(moviesToWatch)
