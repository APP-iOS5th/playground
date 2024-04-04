import Foundation
import PlaygroundSupport
import UIKit

// Playground 페이지가 실행이 완료될 때까지 계속 실행
PlaygroundPage.current.needsIndefiniteExecution = true

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

let urlString = "https://imgs.xkcd.com/comics/api.png"
let url = URL(string: urlString)!
let request = URLRequest(url: url)

let task = session.dataTask(with: request, completionHandler: { (data, response, error) in
    guard let imageData = data else {
        return
    }
    _ = UIImage(data: imageData)
})

task.resume()
