import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

func fetchBBCNewsRSSFeed() {
    
    let session = URLSession.shared
    let url = URL(string: "http://feeds.bbci.co.uk/news/rss.xml")!
    let dataTask = session.dataTask(with: url) { (data, response, error) in
        
        guard let data = data, error == nil else {
            print(error ?? "Unexpected response")
            return
        }
        
        let dataAsString = String(data: data, encoding: .utf8)!
        print(dataAsString)
    }
    dataTask.resume()
}

class RSSNewsArticleBuilder: NSObject, XMLParserDelegate {
    var inItem = false
    func parserDidStartDocument(_ parser: XMLParser) {
        <#code#>
    }
}


fetchBBCNewsRSSFeed()
