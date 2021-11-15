//
//  ProgressHud.swift
//
//  Created by Brent Mifsud on 2021-11-07.
//

import SwiftUI

struct ProgressHud: View {
    var body: some View {
        ProgressView {
            Text(LocalizedStringKey("Loading..."), bundle: .module)
        }
        .progressViewStyle(.circular)
        .frame(width: 120, height: 120, alignment: .center)
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 0)
        .transition(AnyTransition.opacity.animation(.default))
    }
}

public extension View {
    /// Shows a loading indicator in the center of the page.
    func isLoading(_ isLoading: Bool) -> some View {
        GeometryReader { proxy in
            let globalFrame = proxy.frame(in: .global)

            ZStack(alignment: .center) {
                self

                if isLoading {
                    ProgressHud()
                        .position(x: globalFrame.midX, y: globalFrame.midY)
                }
            }
        }
        .ignoresSafeArea(.all, edges: .all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ProgressPopupView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProgressHud()
                .padding()
                .colorScheme(.light)
                .previewLayout(.sizeThatFits)

            ProgressHud()
                .padding()
                .colorScheme(.dark)
                .previewLayout(.sizeThatFits)
            
            // Test on an actual view
            List(0...100, id: \.self) { number in
                Text("\(number)")
            }
            .isLoading(true)
        }
    }
}
