import SwiftUI

struct ContentView: View {
    @State private var backgroundColor = Color.white
    @State private var buttonName = "Change Color"

    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all) // Set the background color to cover the entire screen
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                    .padding()

                Label("Jacob Rotich", systemImage: "person.fill")
                Label("Minerva University", systemImage: "university")
                Label("Math Instructor", systemImage: "briefcase.fill")

                Button(action: {
                    backgroundColor = generateRandomColor()
                }) {
                    Text(buttonName)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
        .cornerRadius(10)
    }

    func generateRandomColor() -> Color {
        let red = Double.random(in: 0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)
        return Color(red: red, green: green, blue: blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
