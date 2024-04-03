

enum MovieReviewClass {
    case bad, average, good, brilliant
}

enum ClassificationState {
    case initial
    case classifying
    case comlete
}


class MovieReviewClassifier {
    var state: ClassificationState = .initial
    
    func classify(forStarsOutOf10 stars: Int) -> MovieReviewClass {
        
        state = .classifying
        
        defer {
            state = .comlete
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


let classifier = MovieReviewClassifier()

let review1 = classifier.classify(forStarsOutOf10: 9)
print(review1)
