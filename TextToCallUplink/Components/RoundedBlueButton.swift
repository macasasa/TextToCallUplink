//
//  RoundedBlueButton.swift
//  TextToCallUplink
//
//  Created by Nikolay on 22.12.2022.
//

import SwiftUI

struct RoundedBlueButton: View {
    let label: String
    let action: () -> Void
    var body: some View {
        Button(label) {
            action()
        }
        .font(.system(.headline, design: .rounded))
        .fontWeight(.bold)
        .foregroundColor(.white)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.blue)
        )
    }
}

struct RoundedBlueButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundedBlueButton(label: "Test") {
            print("Hello world")
        }
    }
}
