import 'dart:math';

class RandomPrompts {
  final Random random = Random();

  // responses from Magic 8 ball wikipedia
  final List<String> prompts = [
    'It is certain.',
    'It is decidedly so.',
    'Without a doubt.',
    'Yes, definitely!',
    'Reply hazy, try again.',
    'Ask again later.',
    'My sources say no.',
    'Outlook is not so good.',
  ];
  int _currentIndex = 0;
  String _currentPhrase = "";

  RandomPrompts() {
    roll();
  }

  String get currentPhrase => _currentPhrase;

  void roll() {
    _currentIndex = random.nextInt(prompts.length);
    _currentPhrase = prompts[_currentIndex];
  }
}
