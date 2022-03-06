//
//  PronounTests.swift
//  
//
//  Created by Ky Leggiero on 2/24/22.
//

import XCTest
@testable import GenderTools



final class PronounTests: XCTestCase {
    func testPronounsDescription() {
        XCTAssertEqual("they/them", Pronouns.theyThem.description)
        XCTAssertEqual("she/her", Pronouns.sheHer.description)
        XCTAssertEqual("he/him", Pronouns.heHim.description)
        
        XCTAssertEqual("it/its", Pronouns.itIts.description)
        
        XCTAssertEqual("fae/faer", Pronouns.faeFaer.description)
        XCTAssertEqual("ey/em", Pronouns.eyEm.description)
        XCTAssertEqual("e/em", Pronouns.eEm.description)
        
        XCTAssertEqual("sie/hir", Pronouns.sieHir.description)
        XCTAssertEqual("xe/xem", Pronouns.xeXem.description)
    }
}
