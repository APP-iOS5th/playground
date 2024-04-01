
class MovieReview {
    let movieTitle: String
    var starRating: Int
    
    init(movieTitle: String, starRating: Int) {
        self.movieTitle = movieTitle
        self.starRating = starRating
    }
}

let shawshankReview = MovieReview(movieTitle: "Shawshank Redemption", starRating: 3)

let twitter = shawshankReview
let facebook = shawshankReview

twitter.starRating = 5

print(shawshankReview.starRating)



