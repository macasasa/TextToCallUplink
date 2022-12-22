//
//  TitleText.swift
//  TextToCallUplink
//
//  Created by Nikolay on 22.12.2022.
//

import SwiftUI

struct TitleText: View {
    let label: String
    
    init(_ label: String) {
        self.label = label
    }
    var body: some View {
        Text(label)
            .font(.system(.title, design: .rounded))
            .fontWeight(.bold)
    }
}

struct TitleText_Previews: PreviewProvider {
    static var previews: some View {
        TitleText("Hello world!")
    }
}
