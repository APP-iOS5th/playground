

//Array(배열)은 순서보장
let fibonacciArray: Array<Int> = [1, 1, 2, 3, 5, 8, 13, 21, 24]
//Set(셋)은 순서를 보장하지않음, 중복을 허용하지않음
let fibonacciSet: Set<Int> = [1, 1, 2, 3, 5, 8, 13, 21, 24]

print(fibonacciArray.count)
print(fibonacciSet.count)

print(fibonacciArray)
print(fibonacciSet)


var animals: Set<String> = ["cat", "dog", "mouse", "elephant"]

//문자열에 집어넣는 메서드
animals.insert("rabbit")
print(animals.contains("dog"))

//문자열에서 삭제하는 메서드
animals.remove("dog")
print(animals.contains("dog"))


let evenNumbers = Set<Int>(arrayLiteral: 2, 4, 6, 8, 10)
let oddNumbers: Set<Int> = [1, 3, 5, 7, 9]
let squareNumbers: Set<Int> = [1, 4, 9]
let triangularNumbers: Set<Int> = [1, 3, 6, 10]

let evenOrTriangularNumbers = evenNumbers.union(triangularNumbers) // 2, 4, 6, 8, 10, 1, 3, unordered // 합집합
print(evenOrTriangularNumbers.count) // 7

let oddAndSquareNumbers = oddNumbers.intersection(squareNumbers) // 1, 9, unordered // 교집합
print(oddAndSquareNumbers.count) // 2

let squareOrTriangularNotBoth = squareNumbers.symmetricDifference(triangularNumbers) // 4, 9, 3, 6, 10, unordered
print(squareOrTriangularNotBoth.count) // 5

let squareNotOdd = squareNumbers.subtracting(oddNumbers) // 4
print(squareNotOdd.count) // 1
