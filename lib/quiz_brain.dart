import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was "Moon".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called "Backrub".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question('Bananas grow on trees.', false), // they grow on plants
    Question('Sharks are mammals.', false), // they are fish
    Question('The Great Wall of China is visible from space.', false),
    Question('Octopuses have three hearts.', true),
    Question('Lightning never strikes the same place twice.', false),
    Question(
        'Humans and giraffes have the same number of neck vertebrae.', true),
    Question('The capital of Australia is Sydney.', false), // it’s Canberra
    Question('Goldfish only have a memory span of three seconds.', false),
    Question('Your fingernails grow faster than your toenails.', true),
    Question('The Eiffel Tower can grow taller in summer due to heat.', true),
    Question('An ostrich\'s eye is bigger than its brain.', true),
    Question('Bulls get angry when they see the color red.', false),
    Question('The human body has four lungs.', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    } else {
      _questionNumber = 0;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
