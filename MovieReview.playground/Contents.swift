//defer: 예약실행 여러개일 경우 역순으로 실행

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
    //init 생략 그리고 클래스안에는 자동으로 생성됨
    var state: ClassificationState = .initial
    
    func classify(forStarsOutOf10 stars: Int) -> MovieReviewClass {
        
        state = .classifying
        
        defer {
            state = .complete
        }
        
        if stars > 8 {
            return .brilliant
        }
        else if stars > 6 {
            return .good
        }
        else if stars > 3 {
            return .average
        }
        else {
            return .bad
        }
    }
}

let classifire = MovieReviewClassifier()

let review1 = classifire.classify(forStarsOutOf10: 9)
print(review1)
print(classifire.state)
