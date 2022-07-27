//
//  SoundManager.swift
//  MyXylophone
//
//  Created by Steven Williams on 7/26/22.
//

import Foundation
import AVKit


class SoundManager {
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    enum SoundOption: String  {
        case A, B, C, D, E, F, G
    }
    func playSound (sound: SoundOption) {
        guard let url: URL = Bundle.main.url(forResource: sound.rawValue, withExtension: ".wav") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error in playing sound \(error.localizedDescription)")
        }
    }
    
    
    
}
