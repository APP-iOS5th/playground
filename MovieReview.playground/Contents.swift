
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
        
        precondition(state == .initial, "Classifier state must be initial")
        // assert nil 이 나오면 함수 자체를 죽임
        //        assert(state == .initial)
        
        state = .classifying
        
        
        defer {
            state = .complete
        }
        // 위에꺼 먼저 실행 후 다음 defer 실행
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
            fatalError("Star rating must be between 1 and 10")
        }
    }
}

let classfier = MovieReviewClassifier()
let review1 = classfier.classify(forStarsOutOf10 : 9)
print(review1)
print(classfier.state)

