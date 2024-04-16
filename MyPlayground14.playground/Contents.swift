
//var treeArray: [String] = ["Pine","Oak","Yew"]

var treeArray: [String] = ["Pine","Oak","Yew"] // 타입 추론 (생략)

var priceArray = [Float]()

var nameArray = [String](repeating: "MyString", count: 10)

let firstArray = ["red", "green", "blue"]
let secondArray = ["indigo", "violet"]
let thirdArray = firstArray + secondArray

print(thirdArray.count)
print(treeArray.isEmpty)
print(treeArray[2])

//treeArray[1] = "Redwood"
treeArray.append("RedWood")
//treeArray += ["Redwood"]

treeArray.shuffle()

print(treeArray)
print(treeArray.randomElement() ?? "")


var bookDict1 = ["100-432112": "Wind in the Willows"]
var myDictionary = [Int: String]()

let keys = ["1","2","3","4","5","6","7"]
let values = ["Value1","Value2","Value3","Value4","Value5","Value6","Value7"]

//let bookDict = Dictionary(uniqueKeysWithValues: zip(keys,values))
var bookDict = Dictionary(uniqueKeysWithValues: zip(1...,values))

print(bookDict.count)
print(bookDict[1, default: "NoValue"])
bookDict[1231000] = "Value"

for (bookId, value) in bookDict {
    print("Book Id: \(bookId) Value: \(value)")
}
