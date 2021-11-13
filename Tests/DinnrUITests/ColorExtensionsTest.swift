//
//  ColorExtensionsTest.swift
//  
//
//  Created by Brent Mifsud on 2021-11-12.
//

@testable import DinnrUI
import SwiftUI
import XCTest

class ColorExtensionsTest: XCTestCase {
    func testColorExtensions() {
        for color in Color.allCases {
            XCTAssertNotNil(color)
        }
    }
}

extension Color: CaseIterable {
    public static var allCases: [Color] {
        [
            .background,
            .secondaryBackground,
            .accent,
            .text,
            .success,
            .warning,
            .error
        ]
    }
}
