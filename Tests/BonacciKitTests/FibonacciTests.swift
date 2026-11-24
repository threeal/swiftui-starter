import BonacciKit
import Testing

@Test func generatesFibonacciSequence() {
  #expect(fibonacciSequence(0) == [])
  #expect(fibonacciSequence(1) == [1])
  #expect(fibonacciSequence(2) == [1, 1])
  #expect(fibonacciSequence(5) == [1, 1, 2, 3, 5])
}
