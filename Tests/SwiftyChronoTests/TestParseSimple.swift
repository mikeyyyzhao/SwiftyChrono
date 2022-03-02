//
//  File.swift
//  
//
//  Created by Baptiste Canton on 02/03/2022.
//
import XCTest
@testable import SwiftyChrono

class TestParseSimple: XCTestCase {
    func testNil() {
        XCTAssertNil(Chrono().parseSimple(text: "", refDate: Date()))
    }
    func testNoEnd() {
        let r = Chrono().parseSimple(text: "today", refDate: Date())
        XCTAssertNil(r?.end)
    }
    func testEnd() {
        let r = Chrono().parseSimple(text: "1 to 2", refDate: Date())
        XCTAssertNotNil(r?.end)
    }
}
