
let fibonacciArray: Array<Int> = [1, 1, 2, 3, 5, 8, 13, 21, 34]
let fibonacciSet: Set<Int> = [1, 1, 2, 3, 5, 8, 13, 21, 34]

print(fibonacciArray.count)
print(fibonacciSet.count)

var animal: Set<String> = [ "cat", "dog", "mouse", "elephant"]
animal.insert("rebbit")
print(animal.contains("dog"))
animal.remove("dog")
print(animal.contains("dog"))


let evenNumbers = Set<Int>(arrayLiteral: 2, 4, 6, 8, 10)
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
