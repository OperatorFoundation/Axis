//
//  Line.swift
//  
//
//  Created by Dr. Brandon Wiley on 8/4/20.
//

import Foundation
import SwiftUI

public struct LineChartLinesAndPoints: View
{
    public let pointset: PointSet
    
    public var body: some View
    {
        ZStack
        {
            LineChartLines(pointset: pointset)
            LineChartPoints(pointset: pointset)
        }
    }
}

public struct LineChartLines: View
{
    public let pointset: PointSet
    
    public var body: some View
    {
        Path
        {
            path in
            
            path.move(to: pointset.points.first!.cgpoint)

            for point in pointset.points[1...]
            {
                path.addLine(to: point.cgpoint)
            }
        }
        .stroke(pointset.color, lineWidth: 10)
    }
}

public struct LineChartPoints: View
{
    public let pointset: PointSet
    
    public var body: some View
    {
        ForEach(pointset.points, id: \.id)
        {
            point in
            
            point
        }
    }
}

struct Line_Previews: PreviewProvider {
    static var previews: some View {
        LineChartLinesAndPoints(pointset: PointSet(id: UUID().uuidString, label: "test", color: Color.red, points: [Point(x: 0, y: 0)]))
    }
}
