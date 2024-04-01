import UIKit

class MovieReview {
    let movieTitle: String
    var starRating: Int
    
    // 상수라고 하고 변수라고 초기화 안해주는 건 아니다.
    init(movieTitle: String, starRating: Int) {
        self.movieTitle = movieTitle
        self.starRating = starRating
    }
}

let shawshankReviewOnYourWebsite = MovieReview(movieTitle: "Shawshank Redemtion", starRating: 3)

// 소셜 미디어에 게시
let referenceToReviewOnTwitter = shawshankReviewOnYourWebsite
let referenceToReviewOnFaceBook = shawshankReviewOnYourWebsite

print(referenceToReviewOnTwitter.starRating)
print(referenceToReviewOnFaceBook.starRating)

shawshankReviewOnYourWebsite.starRating = 5

print(referenceToReviewOnTwitter.starRating)
print(referenceToReviewOnFaceBook.starRating)
