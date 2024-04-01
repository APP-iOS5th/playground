import UIKit

class MovieReview {
    let movieTitle: String
    var starRating: Int
    init(movieTitle: String, starRating: Int) {
        self.movieTitle = movieTitle
        self.starRating = starRating
    }
}

let shawshankReviewInYourWebsite = MovieReview(movieTitle: "shawshank Redemption", starRating: 3)

// 소셜 미디어에 게시
let referenceToReviewOnTwitter = shawshankReviewInYourWebsite
let referenceToReviewOnFacebook = shawshankReviewInYourWebsite

print(referenceToReviewOnTwitter.starRating)
print(referenceToReviewOnFacebook.starRating)

shawshankReviewInYourWebsite.starRating = 5 // 별점 3점을 5점으로 변경

// 변경해도 모든 참조에 반영됨
print(referenceToReviewOnTwitter.starRating)
print(referenceToReviewOnFacebook.starRating)
