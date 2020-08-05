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
    
    var legendItem: LegendItem
    {
        return LegendItem(color: color, text: label)
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
