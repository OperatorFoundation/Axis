//
//  Legend.swift
//  
//
//  Created by Dr. Brandon Wiley on 8/4/20.
//

import Foundation
import SwiftUI

struct Legend: View
{
    var items: [LegendItem]
    
    var body: some View
    {
        Text("test")
    }
}

struct LegendItem: View
{
    let color: Color
    let text: String
    
    var body: some View
    {
        HStack
        {
            Rectangle().fill(color)
            
            Text(text)
        }
    }
}

struct Legend_Previews: PreviewProvider {
    static var previews: some View {
        Legend(items: [LegendItem(color: Color.red, text: "test")])
    }
}
