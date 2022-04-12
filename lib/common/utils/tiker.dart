class Ticker {
  // static final Ticker _singleton = Ticker._internal();
  //
  // factory Ticker() {
  //   return _singleton;
  // }
  //
  // Ticker._internal();

  Stream<int> tick({required int ticks}) {
    return Stream.periodic(Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);
  }

  Stream<int> tickUp({required int ticks}) {
    //Stop stream when ticks is bigger than 24*60*60 seconds
    return Stream.periodic(Duration(seconds: 1), (x) => ticks - x - 1)
        .takeWhile((event) => event >= -1);
    // .take(ticks);
  }
}
