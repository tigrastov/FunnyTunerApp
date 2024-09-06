

import SwiftUI

struct BassView: View {
    @State private var isShowSelectViews = false
    @ObservedObject var viewModel = BassViewModel()
    
    var body: some View {
        
        VStack{
            
            
            GeometryReader { proxy in
                let size = proxy.size
                
                VStack{
                    HStack{
                        Spacer()
                        Button {
                            print("G")
                            self.viewModel.play1()
                        } label: {
                            Image("Tuner1").resizable().scaledToFill()
                                .frame(width: size.width * 0.2, height: size.height * 0.2)
                              
                        }

                        .offset(x: -60, y: 5)
                       
                            
                    }
                    .frame(height: size.height * 0.14)
                   
                    HStack{
                        Spacer()
                        Button {
                            print("D")
                            self.viewModel.play2()
                        } label: {
                            Image("Tuner2").resizable().scaledToFill().frame(width: size.width * 0.2, height: size.height * 0.2)
                              
                        }

                        .offset(x: -100)
                            
                    }
                    .frame(height: size.height * 0.14)
                    HStack{
                        Spacer()
                        Button {
                            print("A")
                            self.viewModel.play3()
                        } label: {
                            Image("Tuner3").resizable().scaledToFill().frame(width: size.width * 0.2, height: size.height * 0.2)
                               
                        }

                        .offset(x: -130)
                       
                      
                    }
                    .frame(height: size.height * 0.14)
                    HStack{
                        Spacer()
                        
                        Button {
                            print("E")
                            self.viewModel.play4()
                        } label: {
                            Image("Tuner4").resizable().scaledToFill().frame(width: size.width * 0.2, height: size.height * 0.2)
                               
                        }

                        .offset(x: -160, y: 5)
                            
                        
                    }
                    .frame(height: size.height * 0.14)
                    
                    
                }
                .frame(width: size.width * 0.8, height: size.height * 0.75)
               // .offset(y: 10)
                   
                
            }.background(.yellow.opacity(0.5))
                //.offset(y: 50)
            
           
            
           
            
        
        }
        .frame(width: screen.width, height: screen.height).background(Image("bgBass").resizable().scaledToFill().ignoresSafeArea())
            .overlay(alignment: .bottom) {
                HStack{
                    Spacer()
                    Image("textBass")
                    Button {
                        print("Hourse")
                        isShowSelectViews.toggle()
                        self.viewModel.stop()
                    } label: {
                        Image("bassChess")
                    }
                    .padding()
                    
                    
                    .fullScreenCover(isPresented: $isShowSelectViews) {
                        InstrumentsSelectView()
                    }
                    
                }
                .frame(width: screen.width * 0.95, height: screen.height / 7, alignment: .center).background(Color("tabBass")).cornerRadius(30)
                .padding()
            }
        
            .onTapGesture {
                self.viewModel.stop()
            }
        
    }
}

struct BassView_Previews: PreviewProvider {
    static var previews: some View {
        BassView()
    }
}
