//
//  InfoButton.swift
//  TextToCallUplink
//
//  Created by Nikolay on 22.12.2022.
//

import SwiftUI

struct InfoButton: View {
    @State private var showText = false
    
    var body: some View {
        Button(action: {
            self.showText = true
        }) {
            Label {
                Text("Info")
            } icon: {
                Image(systemName: "exclamationmark.circle")
            }
            .padding([.all], 8)
        }
        .background(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.blue, lineWidth: 2)
        )
        .foregroundColor(.blue)
        .sheet(isPresented: $showText) {
            VStack(alignment: .leading) {
                Text("Run this project on physical iPhone. Call to second phone. Type text into TextField and press \"Submit\" button. Second phone should hear synthesized speech from the text. Make sure you are using correct language for speech synthesizing.")
                    .font(.system(.body, design: .rounded))
                    .padding([.vertical], 20)
                    
                Spacer()
            }
            .padding()
            .presentationDetents([.medium, .large])
        }
    }
}

struct InfoButton_Previews: PreviewProvider {
    static var previews: some View {
        InfoButton()
    }
}
