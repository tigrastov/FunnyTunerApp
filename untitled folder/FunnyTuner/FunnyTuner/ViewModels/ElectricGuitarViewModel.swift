

import Foundation
import AVFoundation
class ElectricGuitarViewModel: ObservableObject{
    
    @Published var maxDuration = 0.0
    private var player: AVAudioPlayer?
    
    
    public func play1(){
        playSound(name: "E1E")
        player?.play()
    }
    public func play2(){
        playSound(name: "H2E")
        player?.play()
    }
    public func play3(){
        playSound(name: "G3E")
        player?.play()
    }
    public func play4(){
        playSound(name: "D4E")
        player?.play()
    }
    public func play5(){
        playSound(name: "A5E")
        player?.play()
    }
    public func play6(){
        playSound(name: "E6E")
        player?.play()
    }
    public func stop(){
        player?.stop()
    }
    public func setTime(){
        
    }
    
    private func playSound(name: String){
        guard let audioPath = Bundle.main.path(forResource: name, ofType: "mp3") else {return}
        do{
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
            maxDuration = player?.duration ?? 0.0
            
        }catch{
            print(error.localizedDescription)
        }
    }
    
    
}
