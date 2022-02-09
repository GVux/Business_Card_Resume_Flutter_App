import 'dart:math';

class EightBall {
  final Random random = Random();

  final int numberOfOptions;
  int _currentIndex = 0;

  final _guesses = [
    'Beats me',
    'Haha yeah right',
    'Fo sho',
    'Guaranteed',
    'idk bro',
    'No way, Joshua',
    'Probably not',
    'I\'d say so!'
  ];

  String _currentGuess = 'sure';

  EightBall({this.numberOfOptions = 8}); //8 options but 0 counts

  int get currentIndex => _currentIndex;
  String get currentGuess => _currentGuess;

  void selectedOption() {
    _currentIndex = random.nextInt(numberOfOptions);
    _currentGuess = _guesses[_currentIndex];
  }
}
