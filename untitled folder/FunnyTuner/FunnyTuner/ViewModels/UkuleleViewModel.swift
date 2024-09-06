

import Foundation
import AVFoundation

class UkuleleViewModel: ObservableObject{
    //@Published var maxDuration: Float = 0.0
    private var player: AVAudioPlayer?
    
    
    public func play1(){
    playSound(name: "A1")
        player?.play()
    }
    
    public func play2(){
    playSound(name: "E2")
        player?.play()
    }
    
    public func play3(){
    playSound(name: "C3")
        player?.play()
    }
    
    public func play4(){
    playSound(name: "G4")
        player?.play()
    }
    
    public func stop(){
        player?.stop()
    }
    
    public func setTime(){
        
    }
    
     func playSound(name: String){
        guard let audioPath = Bundle.main.path(forResource: name, ofType: "mp3") else{return}
        do{
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
        }catch{
            print(error.localizedDescription)
        }
    }
}
