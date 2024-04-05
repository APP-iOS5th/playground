//
//  CocoaTouchTests.swift
//  CocoaTouchTests
//
//  Created by 황규상 on 4/4/24.
//

import XCTest
@testable import CocoaTouch

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


final class CocoaTouchTests: XCTestCase {
    
    var viewControllerUnderTest: ReposTableViewController?
    
    override func setUp() {
        super.setUp()
        viewControllerUnderTest = ReposTableViewController()
    }
    
    override func tearDown() {
         viewControllerUnderTest = nil
        super.tearDown()
    }
    
    //테스트 코드의 이름을 내가 하려는 테스트의 이름으로 하는게 좋음
    func testThatRepoIsNotNil() {
        XCTAssertNotNil(viewControllerUnderTest?.repos)
    }
    
    func testThatFetchRepoParsesSuccessfulData() {
        
        viewControllerUnderTest?.fetchRepos(forUserName: "", completionHandler: { (respone) in
            print("\(respone)")
        })
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
