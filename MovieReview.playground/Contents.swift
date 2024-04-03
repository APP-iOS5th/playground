
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
    var state: ClassificationState = .initial // 초기화 함수와 동일
    
    func classify(forStarsOutOf10 stars: Int) -> MovieReviewClass {
        
        state = .classifying
        
        // 함수가 언제 끝나는지 모르므로 defer를 통해 나중에 실행
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

let review1 = classifier.classify(forStarsOutOf10: 9)
print(review1)
print(classifier.state)
