import UIKit


//Chapter5
//reference: 참조 타입, 참조의 장점 한부분에서 변경하면 여러부분에 적용
class MovieReview{
    let movieTitle: String
    var startRating: Int
    
    init(movieTitle: String, startRating: Int){
        self.movieTitle = movieTitle
        self.startRating = startRating
    }
}

let shawshankReviewOnYourWebsite = MovieReview(movieTitle: "Shawshank Redemption", startRating: 3)

let referenceToReviewOnTwitter = shawshankReviewOnYourWebsite
let referenceToReviewOnFacebook = shawshankReviewOnYourWebsite

shawshankReviewOnYourWebsite.startRating = 5

print(referenceToReviewOnTwitter.startRating)
print(referenceToReviewOnFacebook.startRating)


