
import SwiftUI

struct GuitarSixTunsView: View {
    @State private var isShowSelectViews = false
    
    @ObservedObject var viewModel = ElectricGuitarViewModel()
    
    var body: some View {
        VStack{
            
            GeometryReader { proxy in
                let size = proxy.size
                
                VStack{
                    
                    HStack {
                        Spacer()
                        Button {
                            print("1")
                            self.viewModel.play1()
                            
                        } label: {
                            Image("tune1")
                                
                    }
                    }.frame(height: size.height * 0.1)
                        
                    
                    
                    HStack {
                        Spacer()
                        Button {
                            print("2")
                            self.viewModel.play2()
                        } label: {
                            Image("tune2")
                               
                    }
                        .offset(x: -55)
                    }.frame(height: size.height * 0.11)
                    
                    
                    HStack {
                        Spacer()
                        Button {
                            print("3")
                            self.viewModel.play3()
                        } label: {
                            Image("tune3")
                                
                    }
                        .offset(x: -90)
                    }.frame(height: size.height * 0.11)
                    
                    
                    HStack {
                        Spacer()
                        Button {
                            print("4")
                            self.viewModel.play4()
                        } label: {
                            Image("tune4")
                               
                    }
                        .offset(x: -120)
                    }.frame( height: size.height * 0.1)
                    
                    HStack {
                        Spacer()
                        Button {
                            print("5")
                            self.viewModel.play5()
                        } label: {
                            Image("tune5")
                                
                    }
                        .offset(x: -160)
                    }.frame(height: size.height * 0.11)
                    
                    HStack{
                        Spacer()
                        Button {
                            print("6")
                            self.viewModel.play6()
                        } label: {
                            Image("tune6")
                               
                    }
                        .offset(x: -200)
                    }.frame(height: size.height * 0.12)
                 
                    
                    
                }
                .frame(height: size.height * 0.8)
                
            }
            
            
            
            
            
        }
        .frame(width: screen.width, height: screen.height).background(Image("bg6").resizable().scaledToFill().ignoresSafeArea())
        .overlay(alignment: .bottom) {
            HStack{
                Spacer()
                
                Image("tabText").resizable().frame(width: 190, height: 60).padding().offset(x: 5)
                Button {
                    print("Hourse")
                    isShowSelectViews.toggle()
                    self.viewModel.stop()
                } label: {
                    Image("6Chess")
                        
                }
                .padding()
                
                .fullScreenCover(isPresented: $isShowSelectViews) {
                    InstrumentsSelectView()
                }
            }
            .frame(width: screen.width * 0.95, height: screen.height / 7).background(Color("tabSix")).cornerRadius(30)
            .padding()

        }
        .onTapGesture {
            self.viewModel.stop()
        }
        
    }
}

struct GuitarSixTunsView_Previews: PreviewProvider {
    static var previews: some View {
        GuitarSixTunsView()
    }
}
