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
    
    
    func classify(forStarsOutOf10 stars: Int) -> MovieReviewClass {
        
        precondition(state == .initial, "Clasifre state must be inital")
//        assert(state != .initial) // 종료
        
        // defer
        state = .classifying
        defer { state = .complete }
        
        if stars > 8 {
            return .brilliant
        } else if stars > 6 {
            return .good
        } else if stars > 3 {
            return .average
        } else if stars > 0 {
            return .bad
        } else {
            fatalError("Start rating must ve betwwem 1 and 10")
        }
    }
}

let classifier = MovieReviewClassifier()
let review1 = classifier.classify(forStarsOutOf10: 6)
print(review1) // brilliant

print(classifier.state)

