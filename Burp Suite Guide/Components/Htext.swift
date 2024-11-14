//
//  Htext.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 09/11/24.
//

//
import SwiftUI

struct Htext: View {
    var title : String
        
        var body: some View {
            Text(title.capitalized)
                .font(.system(size: 18))
                .fontWeight(.semibold)
                .fontDesign(.rounded)
                .lineSpacing(5)

            Divider()
    }
}
