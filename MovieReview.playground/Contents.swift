import UIKit

enum MovieReviewClass {
    case bad
    case average
    case good
    case brilliant
}

enum ClassificationState {
    case initial
    case classifying
    case complete
}

class MovieReviewClassifier {
    
    var state: ClassificationState = .initial
    
    func classfy(forStarsOutOf10 stars: Int) -> MovieReviewClass {
        
        precondition(state == .initial, "Classifier state must be initial")
        
        state = .classifying
        
        defer {
            state = .complete
        }
        if stars > 8 {
            return .brilliant
        } else if stars > 6 {
            return .good
        } else if stars > 3 {
            return . average
        } else if stars > 0 {
            return .bad
        } else {
            fatalError("Star rating must be between 1 and 10")
        }
    }
    
}

let classifier = MovieReviewClassifier()

let review1 = classifier.classfy(forStarsOutOf10: 9)
print(review1)
print(classifier.state)
