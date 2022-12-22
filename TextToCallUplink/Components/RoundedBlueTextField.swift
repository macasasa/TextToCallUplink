//
//  RoundedBlueTextField.swift
//  TextToCallUplink
//
//  Created by Nikolay on 22.12.2022.
//

import SwiftUI

struct RoundedBlueTextField: View {
    let label: String
    @Binding var text: String
    var body: some View {
        TextField(label, text: $text)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.blue, lineWidth: 2)
            )
    }
}

struct RoundedTextField_Previews: PreviewProvider {
    static var previews: some View {
        RoundedBlueTextField(label: "", text: .constant("Test"))
    }
}
