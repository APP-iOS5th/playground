import UIKit

let fibonacciArray: Array<Int> = [1, 1, 2, 3, 5, 8, 13, 21, 34]
let fibonacciSet: Set<Int> = [1, 1, 2, 3, 5, 8, 13, 21, 34]

print(fibonacciArray.count)
print(fibonacciSet.count)

var animals: Set<String> = ["cat", "dog", "mouse", "elephant"]
animals.insert("rabbit")
print(animals.contains("dog"))  // 해당 Set 안에 "" 가 있는지 확인하는 Boolean 메소드
animals.remove("dog")
print(animals.contains("dog"))


// 아이디 중복 등을 체크하기 위한 로직 -> 집합을 이용함으로써, 중복 가능성을 제거하자. 그러나 순서는 없다는 걸 유의
 
// Union, Intersection, Symmetric Difference and Subtracting
let evenNumbers = Set<Int>(arrayLiteral: 2, 4, 6, 8, 10)    // arrayLiteral 로 초기화 하는 방법임.(큰 차이 x)
let oddNumbers: Set<Int> = [1, 3, 5, 7, 9]
let squareNumbers: Set<Int> = [1, 4, 9]
let triangularNumbers: Set<Int> = [1, 3, 6, 10]

let evenOrTriangularNumbers = evenNumbers.union(triangularNumbers) // 2, 4, 6, 8, 10, 1, 3, unordered
print(evenOrTriangularNumbers.count) // 7

let oddAndSquareNumbers = oddNumbers.intersection(squareNumbers) // 1, 9, unordered
print(oddAndSquareNumbers.count) // 2

let squareOrTriangularNotBoth = squareNumbers.symmetricDifference(triangularNumbers) // 4, 9, 3, 6, 10, unordered
print(squareOrTriangularNotBoth.count) // 5

let squareNotOdd = squareNumbers.subtracting(oddNumbers) // 4
print(squareNotOdd.count) // 1


