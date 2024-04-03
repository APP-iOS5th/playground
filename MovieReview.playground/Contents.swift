import UIKit

enum MovieReviewClass {
    case bad
    case average
    case good
    case brilliant
}

enum ClassificationsState {
    case initial
    case classifying
    case complete
}

class MoviewReviewClassifier {
    var state: ClassificationsState = .initial
    
    func classify(forStarsOutOf10 stars: Int) -> MovieReviewClass {
        
        // assert(state == .initial) -> assert안의 조건을 만족하지 못하면 실행된 함수를 죽여버림?
        precondition(state == .initial, "Classifier state must be initial") // 함수 실행의 전제조건
        state = .classifying
        
        // classify()가 끝난 후 실행
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

let classifier = MoviewReviewClassifier()
print(classifier.classify(forStarsOutOf10: 0))
print(classifier.state)
