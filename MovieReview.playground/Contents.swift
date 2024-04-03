
enum MovieReviewClass {
    case bad
    case average
    case good
    case briliant
}

// 분류 상태 옵션 정의
enum ClassificationState { case initial, classifying, complete }

class MovieReviewClassifier {
    // 분류기 클래스 업데이트 하여 상태 추적
    var state: ClassificationState = .initial
    
    func classify(forStarsOutOf10 stars: Int) -> MovieReviewClass {
        // 여러 사람이 같이 일할 때 수월함.
        // assertion  또는 precondition 의 조건이 true 면 코드는 계속 실행되고
        // false 면 현재 프로그램 상태가 invalid 하다고 판단되어서 코드 실행이 멈추고 앱이 종료됩니다.
        precondition(state == .initial, "Classifier state must be initial")
        // assert
//        assert(state != .initial, "state must be initial")
        state = .classifying
        
        defer {         // defer 를 사용. return 전에 씀으로써, return 후 defer 블록 실행
            state = .complete
        }
        
        if stars > 8 {
            return .briliant
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


// 분류기 사용하여 리뷰 분류
let classifier = MovieReviewClassifier()
let review1 = classifier.classify(forStarsOutOf10: 8)
print(review1)
print(classifier.state)


