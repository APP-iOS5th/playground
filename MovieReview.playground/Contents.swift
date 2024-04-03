
enum MovieReviewClass {
    case bad
    case average
    case good
    case brilliant
}


class MovieReviewClassifier {
    
    func classify(forStarsOutOf10 stars: Int) -> MovieReviewClass {
        if stars > 8 {
            return .brilliant
        } else if stars > 6 {
            return .good
        } else if stars > 3 {
            return .average
        } else {
            return .bad
        }
    }
}
