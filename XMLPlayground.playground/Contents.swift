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
        
//        let dataAsString = String(data: data, encoding: .utf8)!
//        print(dataAsString)
        let parser = XMLParser(data: data)
        let articleBuilder = RSSNewsArticleBuilder()
        parser.delegate = articleBuilder
        // 출발
        parser.parse()
        let articles = articleBuilder.articles
        print(articles)
    }
    dataTask.resume()
}

struct NewsArticle {
    let title: String
    let url: URL
}
class RSSNewsArticleBuilder: NSObject, XMLParserDelegate {
    
    var inItem = false
    var inTitle = false
    var inLink = false
    var titleData: Data?
    var linkString: String?
    var articles = [NewsArticle]()
    
    
    func parserDidStartDocument(_ parser: XMLParser) {
        // 초기화
        inItem = false
        inTitle = false
        inLink = false
        titleData = nil
        linkString = nil
        articles = [NewsArticle]()
        
    }
    
    // 문서시작
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qulifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
    }
    
    // XML 이 닫힐때
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qulifiedName qName: String?) {
        
    }

    // c data block : innerText 영역
    func parser(_ parser: XMLParser, foundCDATA CDATABlock: Data) {
        if inTitle {
            titleData?.append(CDATABlock)
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if inLink {
            linkString?.append(string)
        }
    }
    
}

fetchBBCNewsRSSFeed()
