import Foundation

func normalizedStarRating(forRating rating: Float,ofPossibleTotal total: Float ) -> (Int, String){
    let fraction = rating / total
    let ratingOutof5 = fraction * 5
    let roundedRating = round(ratingOutof5)
    let numberofStars = Int(roundedRating)
    let ratingString = "\(numberofStars) Star Movie"
    return (numberofStars,ratingString)
}
