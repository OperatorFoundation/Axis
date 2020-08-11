//
//  File.swift
//  
//
//  Created by Dr. Brandon Wiley on 8/4/20.
//

import Foundation
import SwiftUI

public struct PointSet
{
    public let id: String
    public let label: String
    public let color: Color
    public let points: [Point]
    public var onClickHandler: ClickHandler?
    {
        didSet
        {
            if let handler = onClickHandler
            {
                for var point in points
                {
                    point.onClickHandler = handler
                }
            }
        }
    }
    
    public var legendItem: LegendItem
    {
        return LegendItem(color: color, text: label)
    }
}

extension PointSet
{
    public var pairs: [(Point, Point)]
    {
        var results: [(Point, Point)] = []
        var maybePrevious: Point? = nil
        
        for point in self.points
        {
            if let previous = maybePrevious
            {
                results.append((previous, point))
            }
            
            maybePrevious = point
        }
        
        return results
    }
}

extension PointSet: Hashable
{
    public static func == (lhs: PointSet, rhs: PointSet) -> Bool
    {
        return lhs.id == rhs.id
    }
    
    public func hash(into hasher: inout Hasher)
    {
        hasher.combine(self.id)
    }
}

struct PointSet_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
