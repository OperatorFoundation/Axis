import Foundation
import SwiftUI

struct LineChart: View
{
    let pointsets: [PointSet]
    let xrange: Range<Int>
    let yrange: Range<Int>
    
    var body: some View
    {
        VStack
        {
            ForEach(pointsets, id: \.self)
            {
                Line(datapoints: $0)
            }
            
            Legend(items: pointsets.map({$0.legendItem}))
        }
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
