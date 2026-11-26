import Observation

/// Counts how many times the counter button has been clicked.
@Observable
final class CounterModel {
  private(set) var count = 0

  /// Increases the count by one.
  func increment() {
    count += 1
  }
}
