enum MovieReviewClass{
    case bad
    case average
    case good
    case brilliant
}
enum ClassificatioinState{
    case initial
    case classifying
    case complete
    
}

class MovieReviewClassifier {
    var state: ClassificatioinState = .initial
    
    func classify(forStarsOutOf10 stars: Int) -> MovieReviewClass {
        precondition(state == .initial, "Classifier state must be initial")
        
        
        state = .classifying
        
        defer{
            state = .complete
        }
        defer{
            state = .complete
        }
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
let classifier = MovieReviewClassifier ()
let review1 = classifier.classify(forStarsOutOf10: 9)
print(review1)
print(classifier.state)
