/// Generates a Fibonacci sequence up to the given number of terms.
///
/// The sequence starts from `1, 1`, and exactly `n` terms are returned, so an
/// `n` of 0 yields an empty sequence.
public func fibonacciSequence(_ n: Int) -> [Int] {
  var sequence = Array(repeating: 1, count: n)
  for i in stride(from: 2, to: n, by: 1) {
    sequence[i] = sequence[i - 2] + sequence[i - 1]
  }
  return sequence
}
