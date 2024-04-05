//
//  CocoatouchTests.swift
//  CocoatouchTests
//
//  Created by 정종원 on 4/4/24.
//

import XCTest
@testable import Cocoatouch

/*1. XCTest 클래스 설정
 목적: 단위 테스트 및 통합 테스트를 위한 기본 설정
 방법: CocoaTouchTest 폴더 내의 CocoaTouchTests.swift 파일에서 XCTestCase 를 상속받는
 CocoaTouchTests 클래스를 사용합니다.*/

final class CocoatouchTests: XCTestCase {
    
    
    var viewControllerUnderTest: ReposTableViewController?
    
    /*3. 테스트 준비 및 실행
     setUp 메소드: 테스트 전에 필요한 객체를 초기화합니다.
     tearDown 메소드: 테스트가 완료된 후 리소스를 정리합니다.*/
    override func setUp() {
        viewControllerUnderTest = ReposTableViewController()
    }

    override func tearDown() {
        viewControllerUnderTest = nil
        super.tearDown()
    }
    
    /*2. 단위 테스트 함수 작성
    예시: testThatRepoIsNotNil 함수를 작성하여, repos 배열이 nil이 아닌지 확인합니다.*/
    func testThatRepoIsNotNil() {
        XCTAssertNotNil(viewControllerUnderTest?.repos)
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
