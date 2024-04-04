import Foundation
import PlaygroundSupport
import UIKit

PlaygroundPage.current.needsIndefiniteExecution = true

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

let urlString = "https://imgs.xkcd.com/comics/api.png"
// URL 객체가 옵셔널이어서 ! 로 언랩핑해줘야 한다
let url = URL(string: urlString)!
let request = URLRequest(url: url)

let task = session.dataTask(with: request, completionHandler: { (data, response, error) in
    guard let imageData = data else { return }
    
    _ = UIImage(data: imageData)
})

task.resume()
