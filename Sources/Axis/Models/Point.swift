//
//  Point.swift
//  
//
//  Created by Dr. Brandon Wiley on 8/4/20.
//

import Foundation
import SwiftUI

public typealias ClickHandler = (Point) -> Void

public struct Point
{
    public let x: Int
    public let y: Int
    public let id: UUID
    public let color: Color
    public let size: Int
    public var onClickHandler: ClickHandler?
    
    public var cgpoint: CGPoint
    {
        return CGPoint(x: self.x, y: self.y)
    }
    
    public init(x: Int, y: Int)
    {
        self.x = x
        self.y = y
        self.id = UUID()
        self.color = Color.black
        self.size = 10
    }
}

extension Point: Hashable
{
    public static func == (lhs: Point, rhs: Point) -> Bool
    {
        return lhs.id == rhs.id
    }
    
    public func hash(into hasher: inout Hasher)
    {
        hasher.combine(self.id)
    }
}

extension Point: View
{
    public var body: some View
    {
        Circle()
        .fill(color)
        .frame(width: CGFloat(self.size), height: CGFloat(self.size), alignment: .center)
        .position(x: CGFloat(self.x), y: CGFloat(self.y))
        .onTapGesture(perform: self.onClick)
    }
    
    public func onClick()
    {
        if let handler = self.onClickHandler
        {
            handler(self)
        }
    }
}

struct Point_Previews: PreviewProvider {
    static var previews: some View {
        Point(x: 0, y: 0)
    }
}
