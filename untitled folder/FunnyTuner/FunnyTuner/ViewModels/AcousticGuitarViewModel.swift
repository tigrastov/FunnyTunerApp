

import Foundation
import AVFoundation

class AcousticGuitarViewModel: ObservableObject{
    //@Published var maxDuration: Float = 0.0

    private var player: AVAudioPlayer?
    
    
    public func play1(){
        playSound(name: "E1A")
        player?.play()
    }
    public func play2(){
        playSound(name: "H2A")
        player?.play()
    }
    public func play3(){
        playSound(name: "G3A")
        player?.play()
    }
    public func play4(){
        playSound(name: "D4A")
        player?.play()
    }
    public func play5(){
        playSound(name: "A5A")
        player?.play()
    }
    public func play6(){
        playSound(name: "E6A")
        player?.play()
    }
    
    public func stop(){
        player?.stop()
    }
    
    
    private func playSound(name: String){
        
        guard let audioPath = Bundle.main.path(forResource: name, ofType: "mp3") else {return}
                
                do{
                   try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                }catch{
                    print(error.localizedDescription)
                }
        
    }
    
}
