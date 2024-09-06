

import SwiftUI

struct UkuleleView: View {
    
    @State var isShowSelectViews = false
    
    @ObservedObject var viewModel = UkuleleViewModel()
    
    var body: some View {
        
        
        VStack{
            
            GeometryReader { proxy in
                let size = proxy.size
                
                VStack{
                    
                    HStack{
                        Button {
                            print("3")
                            self.viewModel.play3()
                            
                        } label: {
                            Image("Tun3")
                        }
                        Button {
                            print("2")
                            self.viewModel.play2()
                        } label: {
                            Image("Tun2")
                        }

                    }
                    
                    HStack{
                        
                        Button {
                            print("4")
                            self.viewModel.play4()
                            
                        } label: {
                            Image("Tun4")
                        }
                        Button {
                            print("1")
                            self.viewModel.play1()
                        } label: {
                            Image("Tun1")
                        }
                    }
                    
                }.frame(width: size.width * 1.03, height: size.height * 0.67)
            }
                
                                       
                                                                    
        }
        .frame(width: screen.width, height: screen.height).background(Image("bgUkulele").resizable().scaledToFill().ignoresSafeArea())
        
       
        
        .overlay(alignment: .bottom) {
            
            HStack{
                
                Spacer()
                
                
                Image("textUkulele").resizable().frame(width: 170, height: 70).shadow(color: .black.opacity(0.5), radius: 1, x: 5, y: 4).offset(x: 5)
                    .padding()
                Button {
                    print("Hourse")
                    isShowSelectViews.toggle()
                    self.viewModel.stop()
                } label: {
                    Image("ukuleleChess")
                        .padding()
                }
                
                
                
                /*
                .sheet(isPresented: $isShowSelectViews) {
                    InstrumentsSelectView()
                }
                 */
                .fullScreenCover(isPresented: $isShowSelectViews) {
                    InstrumentsSelectView()
                }

            }
            
            
            .frame(width: screen.width * 0.95, height: screen.height / 7).background(Color("tabUkulele")).cornerRadius(60)
            .padding()
        }
        .onTapGesture {
            self.viewModel.stop()
        }
       
    }
}

struct UkuleleView_Previews: PreviewProvider {
    static var previews: some View {
        UkuleleView()
    }
}
