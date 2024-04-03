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
    case completeAgain
}

class MovieReviewClassifier {
    var state: ClassificationState = .initial
    //init 생략되어 있음 class에는 항상 포함되어있음!!!!
    func classify(forStarsOutOf10 stars: Int) -> MovieReviewClass {
        precondition(state == .initial, "Classifier state must be inital")

        state = .classifying

        defer {
            state = .complete
        }
        defer {
            state = .complete
        }
        
        if stars > 8 {
            return .brilliant
        } else if stars > 6 {
            return .good
        } else if stars > 3 {
            return .average
        } else if stars > 0 {
            return .bad
        } else {
            fatalError("Start rating must be between 1 and 10")
        }
    }
}

//let classifier = MovieReviewClassifier()
//
//let review1 = classifier.classify(forStarsOutOf10: 9)
//print(review1)

//defer 는 예약실행 느김 Stack느낌
//enum ClassificationState{


let classifier = MovieReviewClassifier()

//let review1 = classifier.classify(forStarsOutOf10: -1) //Fatal error: Start rating must be between 1 and 10
print(review1)
print(classifier.state)
