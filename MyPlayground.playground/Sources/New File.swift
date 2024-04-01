import Foundation

let a = readLine()!.split(separator: " ").map{Int(String($0))!}
let c = readLine()!.split(separator: " ").map{Int(String($0))!}

print(c[0]-a[2], c[1] - a[1], c[2] - a[0])
