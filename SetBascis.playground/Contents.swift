import UIKit

let fibonacciArray: Array<Int> = [1, 1, 2, 3, 5, 8, 13, 21, 34]
let fibonacciSet: Set<Int> = [1, 1, 2, 3, 5, 8, 13, 21, 34]

print(fibonacciArray)
print(fibonacciSet)

print(fibonacciArray.count)
print(fibonacciSet.count)

//Set 은 순서가 보장되지 않음
//1이 중복되었기 때문에 Set 특성상 하나만 허용함

var animals: Set<String> = ["cat", "dog", "moust", "elephant"]
animals.insert("rabbit")
print(animals.contains("dog"))
animals.remove("dog")
print(animals.contains("dog"))

//이건 그냥 집합 ,, 보기만..?
let evenNumbers = Set<Int>(arrayLiteral: 2, 4, 6, 8, 10) //arrayLiteral 은 매개변수 콤마를 찍어서 배열을 바로 입력가능
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
