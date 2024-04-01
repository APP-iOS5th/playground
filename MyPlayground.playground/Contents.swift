
class MovieReview {
    let movieTitle: String
    var starRating: Int
    
    init(movieTitle: String, starRating: Int) {
        self.movieTitle = movieTitle
        self.starRating = starRating
    }
}

let shawshankReviewOnYourWebsite = MovieReview(movieTitle: "Shawshank Redemption", starRating: 3)

let refernceToReviewOnTwitter = shawshankReviewOnYourWebsite
let refernceToReviewOnFacebook = shawshankReviewOnYourWebsite

print(refernceToReviewOnTwitter.starRating)
print(refernceToReviewOnFacebook.starRating)

shawshankReviewOnYourWebsite.starRating = 5

print(refernceToReviewOnTwitter.starRating)
print(refernceToReviewOnFacebook.starRating)
