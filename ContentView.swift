import SwiftUI

struct ContentView: View {
    @State private var backgroundColor = Color.white
    
    var body: some View {
        VStack {
            Text("Name: Jacob Rotich")
                .padding()
            Text("University: Minerva University")
                .padding()
            Text("Role: Math Instructor")
                .padding()
            
            Spacer()
            
            Button(action: {
                backgroundColor = generateRandomColor()
            }) {
                Text("Change Color")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
        }
        .background(backgroundColor)
        .edgesIgnoringSafeArea(.all)
    }
    
    func generateRandomColor() -> Color {
        let colors: [Color] = [.red, .green, .blue]
        return colors.randomElement() ?? .white
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
