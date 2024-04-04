import PlaygroundSupport
import Foundation
import UIKit

PlaygroundPage.current.needsIndefiniteExecution = true

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

let urlString = "http://imgs.xkcd.com/comics/api.png"
let url = URL(string: urlString)!
let request = URLRequest(url: url)

let task = session.dataTask(with: request, completionHandler: {(data, response, error) in
    guard let imageData = data else {
        return
    }
    _ = UIImage(data: imageData)
})

task.resume()
