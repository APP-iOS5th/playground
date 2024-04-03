
/**  defer  **/

/// 영화 리뷰 분류 옵션 정의.
enum MovieReviewClass {
    case bad
    case average
    case good
    case brilliant
}

enum ClassificationState {
    case initial, classifying, complete
}


/// 분류기(classifier) 객체 생성.
class MovieReviewClassifier {
    // class 에는 항상 따로 작성하지 않아도 init이 생략되어 있음.
    
    var state: ClassificationState = .initial
    
    func classify(forStartOutOf10 stars: Int) -> MovieReviewClass {
        state = .classifying
        
        // defer가 두개 있으면 아래 것부터 실행한다. (역순) -> 다중 defer 문
        defer {
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

let classifier = MovieReviewClassifier()

let review1 = classifier.classify(forStartOutOf10: 9)
print(review1)

/// classifier 사용하여 리뷰 분류
/// 분류 상태 옵션 정의
/// 분류기 클래스 업데이트하여 상태 추적
