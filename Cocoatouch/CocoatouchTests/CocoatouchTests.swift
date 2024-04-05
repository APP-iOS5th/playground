//
//  CocoatouchTests.swift
//  CocoatouchTests
//
//  Created by 정종원 on 4/4/24.
//

//https://sujinnaljin.medium.com/swift-mock-%EC%9D%84-%EC%9D%B4%EC%9A%A9%ED%95%9C-network-unit-test-%ED%95%98%EA%B8%B0-a69570defb41

import XCTest
@testable import Cocoatouch

/*6. 네트워크 로직 테스트
 목적: fetchRepos 함수의 네트워크 로직을 테스트합니다.
 Mock 객체 사용: URLSession 및 URLSessionDataTask 를 모의(mock) 객체로 만들어 사용합니
 다.*/
class MockURLSession: URLSession {
    override func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return MockURLSessionDataTask(completionHandler: completionHandler, request: request)
    }
}

class MockURLSessionDataTask: URLSessionDataTask {
    
    var completionHandler: (Data?, URLResponse?, Error?) -> Void
    var request: URLRequest
    
    init(completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void, request: URLRequest) {
        self.completionHandler = completionHandler
        self.request = request
        super.init()
    }
    
    var calledResume = false
    
    override func resume() {
        calledResume = true
    }
    
}


/*1. XCTest 클래스 설정
 목적: 단위 테스트 및 통합 테스트를 위한 기본 설정
 방법: CocoaTouchTest 폴더 내의 CocoaTouchTests.swift 파일에서 XCTestCase 를 상속받는
 CocoaTouchTests 클래스를 사용합니다.*/

final class CocoatouchTests: XCTestCase {
    
    
    var viewControllerUnderTest: ReposTableViewController?
    
    /*3. 테스트 준비 및 실행
     setUp 메소드: 테스트 전에 필요한 객체를 초기화합니다.*/
    override func setUp() {
        viewControllerUnderTest = ReposTableViewController()
    }
//    tearDown 메소드: 테스트가 완료된 후 리소스를 정리합니다.
    override func tearDown() {
        viewControllerUnderTest = nil
        super.tearDown()
    }
    
    /*2. 단위 테스트 함수 작성
    예시: testThatRepoIsNotNil 함수를 작성하여, repos 배열이 nil이 아닌지 확인합니다.*/
    func testThatRepoIsNotNil() {
        XCTAssertNotNil(viewControllerUnderTest?.repos)
    }
    
    
    
    var mockData: Data {
        if let path = Bundle.main.path(forResource: "mock_Data", ofType: "json"), let contents = FileManager.default.contents(atPath: path) {
            return contents
        }
        return Data()
    }
    func testTahtFetchRepoParsesSuccessfulData() {
        //라이브 데이터에 접근해야하는 위험과 부담이 있음.. 이쁘게만드는작업,,? -> fetcgRepos는 목킹으로 가짜 세션을 가져가 테스트 하게됨..?
        viewControllerUnderTest?.session = MockURLSession()
        
        var responseObject: FetchReposResult?
        
        let result = viewControllerUnderTest?.fetchRepos(forUsername: "", completionHandler: { (response) in
            responseObject = response
        }) as? MockURLSessionDataTask
        
        result?.completionHandler(mockData, nil, nil)

        switch responseObject {
            
        case .success(let repos):
            XCTAssertEqual(repos.count, 9)
            XCTAssertEqual(repos.first?.name, "aerogear-ios-oauth2")
        case .failure(let error):
            print("\(error)")
        default:
            XCTFail()
        }
    }
    

    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
