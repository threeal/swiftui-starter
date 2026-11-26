import Testing

@testable import Counter

@Test func incrementIncreasesCount() {
  let counter = CounterModel()
  #expect(counter.count == 0)
  counter.increment()
  #expect(counter.count == 1)
}
