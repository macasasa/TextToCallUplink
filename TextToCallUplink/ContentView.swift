//
//  ContentView.swift
//  TextToCallUplink
//
//  Created by Nikolay on 22.12.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                TitleText("Use text for audio calls")
                Spacer()
                InfoButton()
            }
            
            LanguagePicker(language: $vm.language)
            
            RoundedBlueTextField(label: "Enter text for synthesizer", text: $vm.inputText)
            
            RoundedBlueButton(label: "Submit") {
                vm.submit()
            }
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
