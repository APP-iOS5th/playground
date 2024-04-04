import Foundation
import PlaygroundSupport
import UIKit

PlaygroundPage.current.needsIndefiniteExecution = true

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

let urlString = "https://imgs.xkcd.com/comics/api.png"
let url = URL(string: urlString)!
let request = URLRequest(url: url)

// URL 요청을 보내서 받아서 데이터 처리해주는 녀석
let task = session.dataTask(with: request, completionHandler: { (data, response, error) in
    guard let imageDate = data else {
        return
    }
    _ = UIImage(data: imageDate)
})

task.resume()
