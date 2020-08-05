//
//  File.swift
//  
//
//  Created by Dr. Brandon Wiley on 8/4/20.
//

import Foundation
import SwiftUI

struct PointSet
{
    let id: String
    let label: String
    let color: Color
    let points: [Point]
    var onClickHandler: ClickHandler?
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
    
    var legendItem: LegendItem
    {
        return LegendItem(color: color, text: label)
    }
}

extension PointSet
{
    var pairs: [(Point, Point)]
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
    static func == (lhs: PointSet, rhs: PointSet) -> Bool
    {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher)
    {
        hasher.combine(self.id)
    }
}

struct PointSet_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
