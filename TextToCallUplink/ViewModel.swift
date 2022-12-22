//
//  ViewModel.swift
//  TextToCallUplink
//
//  Created by Nikolay on 22.12.2022.
//

import Foundation
import AVFoundation

class ViewModel: ObservableObject {
    @Published var language: String = "en-US"
    @Published var inputText: String = ""
    
    let speechSynthesizer = AVSpeechSynthesizer()
    
    init() {
        speechSynthesizer.mixToTelephonyUplink = true
    }
    func submit() {
        let utterance = AVSpeechUtterance(string: inputText)
        utterance.pitchMultiplier = 1.0
        utterance.rate = 0.5
        utterance.voice = AVSpeechSynthesisVoice(language: language)
        
        speechSynthesizer.speak(utterance)
        
        inputText = ""
    }
}
