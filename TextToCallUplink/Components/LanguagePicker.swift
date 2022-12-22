//
//  LanguagePicker.swift
//  TextToCallUplink
//
//  Created by Nikolay on 22.12.2022.
//

import SwiftUI

struct LanguagePicker: View {
    @Binding var language: String

    var body: some View {
        Picker("Language", selection: $language) {
            Text("English").tag("en-US")
            Text("Suomi").tag("fi-FI")
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}

struct LanguagePicker_Previews: PreviewProvider {
    static var previews: some View {
        LanguagePicker(language: .constant("en-US"))
    }
}
