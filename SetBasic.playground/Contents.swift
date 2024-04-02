
//set: 순서가 보장되지 않음, 중복허용 하지 않음
let finbonacciArray: Array<Int> = [1,1,2,3,5,8,13,21,34]
let fibonacciSet: Set<Int> = [1,1,2,3,5,8,13,21,34]

print(finbonacciArray)
print(fibonacciSet)

var animals: Set<String> = [ "cat", "dog", "mouse", "elephany"]
animals.insert("rabbit")
print(animals.contains("dog")) //contains(): 집합에 요소가 있는지 확인해줌
animals.remove("dog")
print(animals.contains("dog"))

let evenNumbers = Set<Int>(arrayLiteral: 2, 4, 6, 8, 10) //arrayLiteral배열을 바로 입력할수 있음 초기화기법
let oddNumbers: Set<Int> = [1, 3, 5, 7, 9]
let squareNumbers: Set<Int> = [1, 4, 9]
let triangularNumbers: Set<Int> = [1, 3, 6, 10]

let evenOrTriangularNumbers = evenNumbers.union(triangularNumbers) // union(): 합집합해줌
print(evenOrTriangularNumbers.count) // 7

let oddAndSquareNumbers = oddNumbers.intersection(squareNumbers) //intersection(): 교집합
print(oddAndSquareNumbers.count) // 2

let squareOrTriangularNotBoth = squareNumbers.symmetricDifference(triangularNumbers) // 4, 9, 3, 6, 10, unordered
print(squareOrTriangularNotBoth.count) // 5

let squareNotOdd = squareNumbers.subtracting(oddNumbers) // 4
print(squareNotOdd.count) // 1
