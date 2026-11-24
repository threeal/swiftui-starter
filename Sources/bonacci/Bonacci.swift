import ArgumentParser
import BonacciKit

/// A command-line interface for generating a Fibonacci sequence.
@main
struct Bonacci: ParsableCommand {
  static let configuration = CommandConfiguration(
    abstract: "Generate a Fibonacci sequence up to the given number of terms",
    version: "0.1.0"
  )

  @Argument(help: "The number of terms")
  var n: Int

  func run() {
    print(fibonacciSequence(n).map(String.init).joined(separator: " "))
  }
}
