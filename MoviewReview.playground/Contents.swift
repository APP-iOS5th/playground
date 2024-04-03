enum MoviewReviewClass {
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
    
    func classify(forStarsOutOf10 stars: Int) -> MoviewReviewClass {
        precondition(state == .initial, "Classifier state must be initial")
        
        //개발동작에서만 실행되는 코드
       // assert(state == .initial)
        
        state = .classifying
        
        //리턴값이 나왔는데 상태를 바꿀떄
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

let classifier = MovieReviewClassifier()

let review1 = classifier.classify(forStarsOutOf10: 9)
print(review1)
print(classifier.state)
