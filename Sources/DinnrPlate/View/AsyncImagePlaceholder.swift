//
//  AsyncImagePlaceholder.swift
//  
//
//  Created by Brent Mifsud on 2021-11-14.
//

import SwiftUI

public struct AsyncImagePlaceholder: View {
    public var body: some View {
        GeometryReader { proxy in
            Image(systemName: "exclamationmark.triangle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: proxy.size.width / 2, maxHeight: proxy.size.height / 2)
                .symbolRenderingMode(.palette)
                .foregroundStyle(Color.gray, Color.tertiaryBackground)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.secondaryBackground)

        }
    }
}

struct AsyncImagePlaceholder_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AsyncImagePlaceholder()
                .colorScheme(.light)
            
            AsyncImagePlaceholder()
                .colorScheme(.dark)
        }
    }
}
