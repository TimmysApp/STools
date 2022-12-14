//
//  File.swift
//  
//
//  Created by Joe Maghzal on 7/29/22.
//

import SwiftUI

struct EmptyStateModifier<PlaceHolder: View>: ViewModifier {
    @State var isEmpty = false
    let placeHolder: PlaceHolder
    var shouldEmpty: Bool
    func body(content: Content) -> some View {
        ZStack {
            if isEmpty || shouldEmpty {
                placeHolder
            }
            content
                .background(
                    GeometryReader { reader in
                        Color.clear
                            .change(of: reader.frame(in: .global).size == .zero) { newValue in
                                isEmpty = reader.frame(in: .global).size == .zero
                            }
                    }
                )
        }
    }
}
