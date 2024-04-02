import UIKit

/// 1. 집합 생성 및 기본 동작
let fibonacciArray: Array<Int> = [1, 1, 2, 3, 5, 8, 13, 21, 34]
let fibonacciSet: Set<Int> = [1, 1, 2, 3, 5, 8, 13, 21, 34] // 집합의 특성상 중복을 허용하지 않는다.

print(fibonacciArray.count)
print(fibonacciSet.count)


/// 2 요소 삽입, 제거 및 확인
var animals: Set<String> = ["cat", "dog", "mouse", "elephant"]
animals.insert("rabbit")
print(animals.contains("dog"))
animals.remove("dog")
print(animals.contains("dog"))


/// 3. 집합 대수 (집한 연산) 수행
let evenNumbers = Set<Int>(arrayLiteral: 2, 4, 6, 8, 10)
let oddNumbers: Set<Int> = [1, 3, 5, 7, 9]
let squareNumbers: Set<Int> = [1, 4, 9]
let triangularNumbers: Set<Int> = [1, 3, 6, 10]

// union 합집합
let evenOrTriangularNumbers = evenNumbers.union(triangularNumbers)
print(evenOrTriangularNumbers.count)

// intersection
let oddAndSquareNumbers = oddNumbers.intersection(squareNumbers)
print(oddAndSquareNumbers.count)

// symmetricDifference
let squareOrTriangularNotBoth = squareNumbers.symmetricDifference(triangularNumbers)
print(squareOrTriangularNotBoth.count)

// subtracting
let squareNotOdd = squareNumbers.subtracting(oddNumbers)
print(squareNotOdd.count)
