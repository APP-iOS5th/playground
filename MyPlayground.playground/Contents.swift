import Foundation

func normalizedStarRating(forRating rating: Float, ofPossibleTotal total: Float) -> (Int, String) {
    let fraction = rating / total
    let ratingOutOf5 = fraction * 5
    let roundedRating = round(ratingOutOf5)
    let numberOfStars = Int(roundedRating)
    let ratingString = "\(numberOfStars) Star Movie"
    
    return (numberOfStars, ratingString)
}

print(normalizedStarRating(forRating: 1, ofPossibleTotal: 1).0) //numberOfStars
print(normalizedStarRating(forRating: 1, ofPossibleTotal: 1).1) //ratingString
