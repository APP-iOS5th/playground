
let fibonacciArray: Array<Int> = [1,1,2,3,5,8,13,21,34]
let fibonacciSet: Set<Int> = [1,1,2,3,5,8,13,21,34]

print(fibonacciArray.count)
print(fibonacciSet.count)

var animals : Set<String> = ["cat", "dog", "mouse", "elephant"]
animals.insert("rabbit") // rabbit 추가
print(animals.contains("duck")) // contains는 비교해서 알려줌
animals.remove("dog")
print(animals.contains("rabbit"))
