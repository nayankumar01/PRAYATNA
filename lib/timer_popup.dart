import 'dart:async';

class TimerManager {
  static Timer? _timer;

  static void startTimer(void Function() onTimerExpired) {
    _timer?.cancel();
    _timer = Timer(Duration(minutes: 1), () {
      onTimerExpired();
    });
  }

  static void cancelTimer() {
    _timer?.cancel();
  }
}


