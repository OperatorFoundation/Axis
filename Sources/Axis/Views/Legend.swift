//
//  Legend.swift
//  
//
//  Created by Dr. Brandon Wiley on 8/4/20.
//

import Foundation
import SwiftUI

public struct Legend: View
{
    public var items: [LegendItem]
    
    public var body: some View
    {
        Text("test")
    }
}

public struct LegendItem: View
{
    public let color: Color
    public let text: String
    
    public var body: some View
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
