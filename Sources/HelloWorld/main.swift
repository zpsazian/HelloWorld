import SwiftUI

@main
struct HelloWorldApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var statusMessage = "Welcome to HelloWorld"

    var body: some View {
        VStack(spacing: 16) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)

            Text(statusMessage)
                .foregroundStyle(.secondary)

            Button("Say Hello") {
                statusMessage = "Hello from your macOS app!"
            }
            .buttonStyle(.borderedProminent)
        }
        .padding(32)
        .frame(minWidth: 320, minHeight: 240)
    }
}
