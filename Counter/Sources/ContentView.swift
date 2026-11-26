import SwiftUI

/// The app's only screen, with a button that counts how many times it's clicked.
struct ContentView: View {
  @State private var counter = CounterModel()

  var body: some View {
    VStack(spacing: 16) {
      Text("Click the button to increase the counter.")
      Button("count is \(counter.count)") {
        counter.increment()
      }
      .buttonStyle(.borderedProminent)
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
