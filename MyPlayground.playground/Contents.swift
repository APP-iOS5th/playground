
class MovieReview {
    let moviewTitle: String
    var starRating: Float
    
    init(moviewTitle: String, starRating: Float) {
        self.moviewTitle = moviewTitle
        self.starRating = starRating
    }
}

let shawshankReviewOnYourWebsite = MovieReview(moviewTitle: "shawshank", starRating: 3)

let referenceToReviewOnTwitter = shawshankReviewOnYourWebsite
let referenceToReviewOnInstagram = shawshankReviewOnYourWebsite

print(referenceToReviewOnTwitter.starRating)
print(referenceToReviewOnInstagram.starRating)

shawshankReviewOnYourWebsite.starRating = 4.7

print(referenceToReviewOnTwitter.starRating)
print(referenceToReviewOnInstagram.starRating)
