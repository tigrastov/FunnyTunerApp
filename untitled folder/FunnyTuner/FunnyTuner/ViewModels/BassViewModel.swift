
import Foundation
import AVFoundation

class BassViewModel: ObservableObject{
    
    @Published var maxDuration: Float = 0.0
    private var player: AVAudioPlayer?
    
    
    public func play1(){
        playSound(name: "G1")
        player?.play()
    }
    
    public func play2(){
        playSound(name: "D2")
        player?.play()
    }
    
    public func play3(){
        playSound(name: "A3")
        player?.play()
    }
    
    public func play4(){
        playSound(name: "E4")
        player?.play()
    }
    
    public func stop(){
        player?.stop()
    }
    
    public func setTime(){
        
    }
    
    private func playSound(name: String){
        guard let audioPath = Bundle.main.path(forResource: name, ofType: "mp3")
        else {return}
        
        do{
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
        }catch{
            print(error.localizedDescription)
        }
    }
    
}
