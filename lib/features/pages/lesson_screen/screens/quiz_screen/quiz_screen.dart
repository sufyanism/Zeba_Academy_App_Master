import 'package:flutter/material.dart';
import 'package:zeba_academy_education_app/features/pages/lesson_screen/screens/quiz_screen/widgets/question_screen.dart';
import 'package:zeba_academy_education_app/shared/constants.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Back to lesson",
          style: TextStyle(fontSize: kAppBarSize,),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Test Elementary lesson 1",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                        "${currentQuestionIndex + 1}/${questionList.length.toString()}",
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),
                const SizedBox(height: 40.0),
                _questionWidget(),
                _answerList(),
              ],
            ),
            _nextButton(),
          ],
        ),
      ),
    );
  }

  _questionWidget() {
    return Text(
      questionList[currentQuestionIndex].questionText,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  _answerList() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: questionList[currentQuestionIndex]
            .answersList
            .map(
              (e) => _answerButton(e),
            )
            .toList(),
      ),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 15),
      height: 48,
      color: kBackgroundColor,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor: isSelected ? Colors.yellow : kButtonColor,
          foregroundColor: isSelected ? Colors.black : Colors.white,
        ),
        onPressed: () {
          setState(() {
            selectedAnswer = answer;
          });
        },
        child: Text(answer.answerText),
      ),
    );
  }

  _nextButton() {

    bool isLastQuestion = false;
    if(currentQuestionIndex == questionList.length - 1){
      isLastQuestion = true;
    }

    bool isFirstQuestion = currentQuestionIndex == 0;


    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: isFirstQuestion ? null :() {
              setState(() {
                currentQuestionIndex--;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: kButtonColor,
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 1),
            ),
            child:  Row(
              children: [
                Icon(isFirstQuestion ? null : Icons.arrow_left_sharp,color: Colors.white,),
                const SizedBox(width: 3),
                 const Text(
                  "Previous",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if(isLastQuestion == true){

              }
              else
              {
                setState(() {
                  selectedAnswer = null;
                  currentQuestionIndex++;
                });
              }
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow,padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 1)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  isLastQuestion ? "End Test" : "Next",
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                ),
                Icon(isLastQuestion ? null : Icons.arrow_right_sharp,color: Colors.black,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// class QuestionWidget extends StatefulWidget {
//   const QuestionWidget({super.key});

//   @override
//   State<QuestionWidget> createState() => _QuestionWidgetState();
// }

// class _QuestionWidgetState extends State<QuestionWidget> {
//   @override
//   Widget build(BuildContext context) {
//     List<Question> questionList = getQuestions();
//     int currentQuestionIndex = 0;
//     Answer? selectedAnswer;

//     return Column(
//       children: [
//         Text(
//           questionList[currentQuestionIndex].questionText,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//             fontWeight: FontWeight.normal,
//           ),
//         ),
//         const SizedBox(height: 30.0),
//         Container(
//           alignment: Alignment.center,
//           width: double.infinity,
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             color: kBackgroundColor,
//             borderRadius: BorderRadius.circular(5),
//           ),
//           child: Column(
//             children: questionList[currentQuestionIndex]
//                 .answersList
//                 .map(
//                   (e) => _answerButton(e),
//                 )
//                 .toList(),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _answerButton(Answer answer) {

//     bool isSelected = answer == selectedAnswer;
//     return Container(
//       width: double.infinity,
//       margin: const EdgeInsets.symmetric(vertical: 15),
//       height: 48,
//       color: kBackgroundColor,
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
//           backgroundColor: isSelected ? Colors.yellow : kButtonColor,
//           foregroundColor: isSelected ? Colors.black : Colors.white,
//         ),
//         onPressed: () {
//           setState((){
//             selectedAnswer = answer;
//           });
//         },
//         child: Text(answer.answerText),
//       ),
//     );
//   }
// }
