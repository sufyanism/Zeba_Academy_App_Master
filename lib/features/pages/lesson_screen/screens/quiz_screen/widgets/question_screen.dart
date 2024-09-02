class Question {
  final String questionText;
  final List<Answer> answersList;

  Question({required this.questionText, required this.answersList});
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer({required this.answerText, required this.isCorrect});
}

List<Question> getQuestions() {
  List<Question> list = [];

  list.add(
    Question(
      questionText: "Question to Test assessment fr users, for example 5 test?",
      answersList: [
        Answer(answerText: "I need help with my Studies", isCorrect: true),
        Answer(
            answerText: "I don't need help with my Studies", isCorrect: false),
        Answer(
            answerText: "I really want guide to study with my own",
            isCorrect: false),
        Answer(answerText: "None of the above", isCorrect: false),
      ],
    ),
  );
  list.add(
    Question(
      questionText: "Who is the owner of flutter",
      answersList: [
        Answer(answerText: "Nokia", isCorrect: false),
        Answer(answerText: "Apple", isCorrect: false),
        Answer(answerText: "Google", isCorrect: true),
        Answer(answerText: "None of the above", isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      questionText: "Youtube is a __________ Platform?",
      answersList: [
        Answer(answerText: "Music Sharing", isCorrect: false),
        Answer(answerText: "Video Streaming", isCorrect: false),
        Answer(answerText: "Live Streaming", isCorrect: false),
        Answer(answerText: "All of the above", isCorrect: true),
      ],
    ),
  );

  list.add(
    Question(
      questionText: "Flutter uses dart as a language?",
      answersList: [
        Answer(answerText: "True", isCorrect: true),
        Answer(answerText: "False", isCorrect: false),
      ],
    ),
  );

    list.add(
    Question(
      questionText: "Flutter is the old coding language?",
      answersList: [
        Answer(answerText: "True", isCorrect: false),
        Answer(answerText: "False", isCorrect: true),
      ],
    ),
  );

  return list;
}
