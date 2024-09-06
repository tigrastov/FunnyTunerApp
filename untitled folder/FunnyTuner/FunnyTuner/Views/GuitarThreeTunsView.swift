
import SwiftUI

struct GuitarThreeTunsView: View {
    @State private var isShowSelectViews = false
    
    @ObservedObject var viewModel = AcousticGuitarViewModel()
    
    var body: some View {
        
        VStack{
            
            GeometryReader { proxy in
                let size = proxy.size
                VStack{
                    
                    HStack{
                        
                        Button {
                            print("4")
                            self.viewModel.play4()
                        } label: {
                            Image("Button4")
                        }
                        
                        Button {
                            print("3")
                            self.viewModel.play3()
                        } label: {
                            Image("Button3")
                        }

                    }
                    
                    HStack{
                        
                        Button {
                            print("5")
                            self.viewModel.play5()
                        } label: {
                            Image("Button5")
                        }
                        
                        Button {
                            print("2")
                            self.viewModel.play2()
                        } label: {
                            Image("Button2")
                        }
                    
                }
                    
                    HStack{
                        
                        Button {
                            print("6")
                            self.viewModel.play6()
                        } label: {
                            Image("Button6")
                        }
                        
                        Button {
                            print("1")
                            self.viewModel.play1()
                        } label: {
                            Image("Button1")
                        }
                    
            }
               
                }.frame(width: size.width * 1.03, height: size.height * 0.8)
            }
            
        }
        .frame(width: screen.width, height: screen.height).background(Image("bg3").resizable().scaledToFill().ignoresSafeArea())
        .overlay(alignment: .bottom) {
            
            HStack{
                Spacer()
                Image("textTab")
                Button {
                    print("Hourse")
                    isShowSelectViews.toggle()
                    self.viewModel.stop()
                } label: {
                    Image("3Chess")
                        
                }
                .padding()
                
                .fullScreenCover(isPresented: $isShowSelectViews) {
                    InstrumentsSelectView()
                }
            }
            .frame(width: screen.width * 0.95, height: screen.height / 7, alignment: .center).background(Color.green.opacity(0.5).cornerRadius(60))
            .padding()
        }
        .onTapGesture {
            self.viewModel.stop()
        }
        
        
    }
}

struct GuitarThreeTunsView_Previews: PreviewProvider {
    static var previews: some View {
        GuitarThreeTunsView()
    }
}
