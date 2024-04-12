import Foundation

//변수 : 값이 바뀔수있음
var someInt: Int = 0 //0이었는데요
someInt = 1 //1입니다

//상수 : 값 못바꿈
let otherInt: Int = 0 //노빠꾸

//배열 : 연속된 값의 나열
let someArray: [Int] = [12,354,3356,34784,664]

print("=========반복문===========")
//반복문(for) : 똑같은 노가다를 n번 반복함
for i in 0...10 { //i 가 0부터 10이 될때까지(즉 10번) 노가다함
    print(i) //콘솔에 i를 찍어라 => 0,1,2,3,4,5,6,7,8,9,10
}
print("=========배열로 반복문===========")
//배열로 반복문 돌리기
for i in 0..<someArray.count { //i가 0부터 someArray의 배열 길이 -1 이 될때까지
    //돌려라
    print(someArray[i]) //12,354,3356,34784,664 차례대로 출력
}
print("=========조건문===========")
//조건문(if) : 조건에 맞으면 위에꺼 안맞으면 else 실행
var someIfVariable: Int = 100
if someIfVariable > 50 { //someIfVariable이 50보다 크면 (51부터)
    //여기가 실행
    print("50보다 크네용")
} else { //작으면
    //여기가 실행
    print("50보다 작네용")
}

print("=========함수===========")
//함수 : 함수 내부에 주어진 규칙에 따라 작업을 수행한 값을 뱉음(혹은 안뱉을수도 있음)
func someFoo(someInt: Int) -> Int {
    let returnValue: Int = someInt + 100
    return returnValue
}

let someFooResult: Int = someFoo(someInt: 13)
print(someFooResult) //13 + 100 = 113
