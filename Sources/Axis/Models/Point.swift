//
//  Point.swift
//  
//
//  Created by Dr. Brandon Wiley on 8/4/20.
//

import Foundation
import SwiftUI

struct Point
{
    let x: Int
    let y: Int
    let uuid: UUID
    let color: Color
    
    init(x: Int, y: Int)
    {
        self.x = x
        self.y = y
        self.uuid = UUID()
        self.color = Color.black
    }
}

extension Point: View
{
    var body: some View
    {
        Circle()
    }
}

struct Point_Previews: PreviewProvider {
    static var previews: some View {
        Point(x: 0, y: 0)
    }
}
