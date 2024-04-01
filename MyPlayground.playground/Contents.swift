class MovieReview {
    let movieTitle: String
    var starRating: Int
    init(movieTitle: String, starRating: Int) {
        self.movieTitle = movieTitle
        self.starRating = starRating
    }
}

let shawshandkReviewOnYourWebsite = MovieReview(movieTitle: "Shawshank Redemption", starRating: 3)
// 소셜 미디어에 게시
let referenceToReviewOnTwitter = shawshandkReviewOnYourWebsite
let referenceToReviewOnFacebook = shawshandkReviewOnYourWebsite

print(referenceToReviewOnTwitter.starRating)
print(referenceToReviewOnFacebook.starRating)

shawshandkReviewOnYourWebsite.starRating = 5

// 변경 사항이 모든 참조에 반영됨
print(referenceToReviewOnTwitter.starRating)
print(referenceToReviewOnFacebook.starRating)
