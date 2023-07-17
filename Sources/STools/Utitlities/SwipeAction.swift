//
//  File.swift
//  
//
//  Created by Joe Maghzal on 27/05/2023.
//

import SwiftUI

public struct SwipeAction: Identifiable {
//MARK: - Properties
    public var id = UUID()
    internal var content: AnyView
    internal var isLeading: Bool
    internal var tint: Color
    internal var radius = CGFloat.zero
    internal var height: CGFloat?
//MARK: - Modifiers
    public func with(tint: Color) -> Self {
        return SwipeAction(content: content, isLeading: isLeading, tint: tint, radius: radius, height: height)
    }
    public func cornerRadius(_ radius: CGFloat) -> Self {
        return SwipeAction(content: content, isLeading: isLeading, tint: tint, radius: radius, height: height)
    }
    public func frame(height: CGFloat) -> Self {
        return SwipeAction(content: content, isLeading: isLeading, tint: tint, radius: radius, height: height)
    }
}

@resultBuilder
public struct SwipeActionsResultBuilder {
    public static func buildBlock(_ components: SwipeAction...) -> [SwipeAction] {
        return components
    }
    public static func buildEither(first component: SwipeAction) -> SwipeAction {
        return component
    }
    public static func buildEither(second component: SwipeAction) -> SwipeAction {
        return component
    }
}
