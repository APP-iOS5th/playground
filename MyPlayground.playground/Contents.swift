
class MovieReview {
    let movieTitle: String
    var starRating: Int
    init(movieTitle: String, starRating: Int) {
        self.movieTitle = movieTitle
        self.starRating = starRating
    }
}

let shawshankReviewOnYourWebsite = MovieReview(movieTitle: "Shawshank Redemption", starRating: 3)

// 소셜 미디어에 게시
let referenceToReviewOnTwitter = shawshankReviewOnYourWebsite
let referenceToReviewOnFacebook = shawshankReviewOnYourWebsite

print(referenceToReviewOnTwitter.starRating) // 3
print(referenceToReviewOnFacebook.starRating) // 3

shawshankReviewOnYourWebsite.starRating = 5

// 변경 사항이 모든 참조에 반영됨
print(referenceToReviewOnTwitter.starRating) // 5
print(referenceToReviewOnFacebook.starRating) // 5
