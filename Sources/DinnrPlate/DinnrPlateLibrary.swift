//
//  DinnrPlateLibrary.swift
//  
//
//  Created by Brent Mifsud on 2021-11-14.
//

import SwiftUI

public struct DinnrPlateLibrary: LibraryContentProvider {
    public var views: [LibraryItem] = [
        // add views to xcode library...
    ]
    
    public func modifiers<Content: View>(base: Content) -> [LibraryItem] {
        [
            LibraryItem(base.isLoading(false), visible: true, title: "Is Loading", category: .other, matchingSignature: "loading")
        ]
    }
    
}
