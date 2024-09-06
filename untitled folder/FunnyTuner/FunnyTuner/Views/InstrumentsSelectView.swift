
import SwiftUI

struct InstrumentsSelectView: View {
    
    
    /*
    var instruments = ["Ukulele", "Bass", "Acustic guitar", "Electric guitar"]
    @State var selectedInstr = 0
    */
    
    @State private var isUkuleleShow = false
    @State private var isBassShow = false
    @State private var isAcusticShow = false
    @State private var isElectricShow = false
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            VStack{
                Spacer()
                
                Text("Music Instrument Selection").font(.title)
                
                Spacer()
               
                Button {
                    isUkuleleShow.toggle()
                } label: {
                    Text("Ukulele").foregroundColor(.white).padding().font(.title).background(Color("Ukulele")).cornerRadius(20)
                }
                .fullScreenCover(isPresented: $isUkuleleShow) {
                    UkuleleView()
                }
                
               
                
                Button {
                    isAcusticShow.toggle()
                } label: {
                    Text("Acoustic Guitar").foregroundColor(.black).padding().font(.title).background(Color("Acoustic")).cornerRadius(20)
                }
                .fullScreenCover(isPresented: $isAcusticShow) {
                    GuitarThreeTunsView()
                }
                
                Button {
                    isElectricShow.toggle()
                } label: {
                    Text("Electric Guitar").foregroundColor(.white).padding().font(.title).background(Color("Electric")).cornerRadius(20)
                }
                .fullScreenCover(isPresented: $isElectricShow) {
                    GuitarSixTunsView()
                }
                
                Button {
                    isBassShow.toggle()
                } label: {
                    Text("Bass").foregroundColor(.pink).padding().font(.title).background(Color("Bass")).cornerRadius(20)
                }
                .fullScreenCover(isPresented: $isBassShow) {
                    BassView()
                }
                
                Spacer()



                
            }//.background(Color.blue.opacity(0.3))
            
            .frame(width: size.width, height: size.height)
            .background(Color.blue.opacity(0.3))
           
        }
        /*
        .frame(width: screen.width, height: screen.height).background(Color.green.opacity(0.3)).ignoresSafeArea()
         */
        
    }
}

struct InstrumentsSelectView_Previews: PreviewProvider {
    static var previews: some View {
        InstrumentsSelectView()
    }
}
