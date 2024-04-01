import UIKit

func normalizedStarRating(forRating rating: Float, ofPossibleTotal total: Float) -> (Int, String)
{
    let fraction = rating / total
    let ratingOutOf5 = fraction * 5
    let roundedRating = round(ratingOutOf5)
    let numberofStars = Int(roundedRating)
    let ratingString = "\(numberofStars) Star Movie"
    return (numberofStars,ratingString)
}
