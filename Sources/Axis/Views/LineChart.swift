import Foundation
import SwiftUI

public struct LineChart: View
{
    public let pointsets: [PointSet]
    public let xrange: Range<Int>
    public let yrange: Range<Int>
    public var onClickHandler: ClickHandler?
    {
        didSet
        {
            if let handler = onClickHandler
            {
                for var pointset in pointsets
                {
                    pointset.onClickHandler = handler
                }
            }
        }
    }
    
    public var body: some View
    {
        VStack
        {
            ZStack
            {
                ForEach(pointsets, id: \.id)
                {
                    LineChartLinesAndPoints(pointset: $0)
                }
            }
                
            Legend(items: pointsets.map({$0.legendItem}))
        }
    }
    
    public init(pointsets: [PointSet], xrange: Range<Int>, yrange: Range<Int>)
    {
        self.pointsets = pointsets
        self.xrange = xrange
        self.yrange = yrange
    }
}

struct LineChart_Previews: PreviewProvider {
    static var previews: some View {
        let point = Point(x: 0, y: 0)
        let points = [point]
        let pointset = PointSet(id: UUID().uuidString, label: "test", color: Color.red, points: points)
        let pointsets = [pointset]
        return LineChart(pointsets: pointsets, xrange: 0..<10, yrange: 0..<10)
    }
}
