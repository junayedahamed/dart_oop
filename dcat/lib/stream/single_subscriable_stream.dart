import 'dart:async';

void main() {
  //single subscriptionl stream

  StreamController<int> streamController = StreamController();

  streamController.sink.add(15);

  StreamSubscription<int> streamSubscription =
      streamController.stream.listen((onData) {
    print(onData);
  });

  streamController.sink.add(10);
  streamController.sink.add(11);

  streamController.sink.add(12);
  // this will cancel subscription to the sream
  streamSubscription.cancel();

  try {
    streamController.stream.listen((onData) {
      print(onData);
    });
  } catch (e) {
    /// this will give[ Bad state: Stream has already been listened to. ] error
    /// because the stream already subscripted by another subscriber
    ///  though that was cancel but it is not subscriable
    /// that stream  is subscriable once at it's life time
    print(e);
  }
}
