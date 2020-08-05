//
//  Line.swift
//  
//
//  Created by Dr. Brandon Wiley on 8/4/20.
//

import Foundation
import SwiftUI

struct Line: View
{
    let datapoints: PointSet
    
    var body: some View
    {
        Text("test")
    }
}

struct Line_Previews: PreviewProvider {
    static var previews: some View {
        Line(datapoints: PointSet(id: UUID().uuidString, label: "test", color: Color.red, points: [Point(x: 0, y: 0)]))
    }
}
