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
        
        let parser = XMLParser(data: data)
        let articleBuilder = RSSNewsArticleBuilder()
        parser.delegate = articleBuilder
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
    
    // xml parser가 문서 파싱을 시작할 때 호출 -> 파싱에 필요한 변수 초기화
    func parserDidStartDocument(_ parser: XMLParser) {
        inItem = false
        inTitle = false
        inLink = false
        titleData = nil
        linkString = nil
        articles = [NewsArticle]()
    }
    
    // xml 요소의 시작 태그를 만났을 때 호출
    func parser(_ parser: XMLParser,
                didStartElement elementName: String,
                namespaceURI: String?,
                qualifiedName qName: String?,
                attributes attributeDict: [String : String] = [:]) {
        
        // 요소 이름 확인 및 요소 내용 추출
        switch elementName {
            
        case "item":
            inItem = true
            
        case "title":
            inTitle = true
            titleData = Data()
            
        case "link":
            inLink = true
            linkString = ""
            
        default:
            break
        }
        
    }
    
    // xml 요소의 끝 태그를 만났을 때 호출
    func parser(_ parser: XMLParser,
                didEndElement elementName: String,
                namespaceURI: String?,
                qualifiedName qName: String?) {
        
        // 요소 내용 추출 및 적절한 형태로 저장하거나 처리
        switch elementName {
            
        case "item":
            inItem = false
            
            guard
                let titleData = titleData,
                let titleString = String(data: titleData, encoding: .utf8),
                let linkString = linkString,
                let link = URL(string: linkString)
                else { break }
            
            let article = NewsArticle(title: titleString, url: link)
            articles.append(article)
            
        case "title":
            inTitle = false
            
        case "link":
            inLink = false
            
        default:
            break
        }

    }
    
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
