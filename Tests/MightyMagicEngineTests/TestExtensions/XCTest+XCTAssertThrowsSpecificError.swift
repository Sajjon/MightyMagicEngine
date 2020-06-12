//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-09.
//

import XCTest

extension XCTest {
    
    func XCTAssertThrowsSpecificError<E>(
        _ functionThatShouldThrow: @autoclosure () throws -> Any,
        expectedError: E,
        _ message: String = "",
        line: UInt = #line
    ) where E: Swift.Error & Equatable {
        XCTAssertThrowsError(
            try functionThatShouldThrow(),
            message,
            line: line
        ) { anyError in
            guard let error = anyError as? E else {
                XCTFail("Wrong error type")
                return
            }
            XCTAssertEqual(error, expectedError, line: line)
        }
    }
}
