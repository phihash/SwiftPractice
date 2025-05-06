import SwiftUI

struct ContentView: View {
    @State var bgColor : Color = .red ;
    let colors : [Color] = [.yellow,.green,.brown,.gray, .mint]
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            Button(action:{
                var newColor: Color
                repeat{
                    newColor = colors.randomElement()!
                } while newColor == bgColor
                bgColor = newColor;
            }){
                Text("色を変える")
            }
        }
    }
}

#Preview {
    ContentView()
}
