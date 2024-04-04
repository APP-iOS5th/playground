<<<<<<< HEAD
=======

>>>>>>> main
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
<<<<<<< HEAD
class MovieReviewClassifier {
    var state: ClassificationState = .initial
    // for error from precondition
//    var state: ClassificationState = .classifying
    
    func classify(forStarsOutOf10 stars: Int) -> MovieReviewClass {
        precondition(state == .initial, "Classifier state must be initial")
//        assert(state == .initial)
=======


class MovieReviewClassifier {
    var state: ClassificationState = .initial
    
    func classify(forStarsOutOf10 stars: Int) -> MovieReviewClass {
        precondition(state == .initial, "Classifier state must be inital")

>>>>>>> main
        state = .classifying
        
        defer {
            state = .complete
        }
<<<<<<< HEAD
=======
        defer {
            state = .complete
        }

>>>>>>> main
        if stars > 8 {
            return .brilliant
        } else if stars > 6 {
            return .good
        } else if stars > 3 {
            return .average
<<<<<<< HEAD
        } else if stars > 0{
            return .bad
        } else {
            fatalError("Star rating must be between 1 and 10")
        }
=======
        } else if stars > 0 {
            return .bad
        } else {
            fatalError("Start rating must be between 1 and 10")
        }

>>>>>>> main
    }
}

let classifier = MovieReviewClassifier()

<<<<<<< HEAD
let review1 = classifier.classify(forStarsOutOf10: 6)
// for error from fatalError
//let review1 = classifier.classify(forStarsOutOf10: -1)
print(review1)

=======
let review1 = classifier.classify(forStarsOutOf10: -1)
print(review1)
print(classifier.state)
>>>>>>> main
