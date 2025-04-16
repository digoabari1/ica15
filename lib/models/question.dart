class Question {
  final String question;
  final List<String> options;
  final String correctAnswer;

  Question({
    required this.question,
    required this.correctAnswer,
    required this.options
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    List<String> options = List<String>.from(json['incorrect_answers']);
    options.add(json['correct_answer']);
    options.shuffle();

    return Question(question: json['question'], correctAnswer: json['correctAnswer'], options: json['options']);
  }
}