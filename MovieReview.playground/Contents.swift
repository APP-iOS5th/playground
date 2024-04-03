// ♥️ Defer 로 실행 지연 ✨
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

// 분류기 객체 생성 🎀
class MovieReviewClassifier {
    var state: ClassificationState = .initial
    
    // 정수 별점을 받으면 MovieReviewClass 로 리턴함
    func classify(forStarsOutOf10 stars: Int) -> MovieReviewClass {
        
        state = .classifying
        
        defer { // defer 는 예약어
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
