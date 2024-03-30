import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreen();
}

class _QuizScreen extends State<QuizScreen> {
  List<Map> allQuestions = [
    {
      'question': 'What is the capital of France?',
      'options': ['Paris', 'London', 'Berlin', 'Madrid'],
      'answerIndex': 0,
    },
    {
      'question': 'What is the capital of Italy?',
      'options': ['Paris', 'Rome', 'Berlin', 'Madrid'],
      'answerIndex': 1,
    },
    {
      'question': 'What is the capital of India?',
      'options': ['New Delhi', 'Beijing', 'Tokyo', 'Mumbai'],
      'answerIndex': 0,
    },
    {
      'question': 'What is the capital of Brazil?',
      'options': ['Rio de Janeiro', 'Brasília', 'São Paulo', 'Salvador'],
      'answerIndex': 1,
    },
    {
      'question': 'What is the capital of Australia?',
      'options': ['Sydney', 'Melbourne', 'Canberra', 'Perth'],
      'answerIndex': 2,
    },
    {
      'question': 'What is the capital of Canada?',
      'options': ['Toronto', 'Vancouver', 'Ottawa', 'Montreal'],
      'answerIndex': 2,
    },
    {
      'question': 'What is the capital of China?',
      'options': ['Beijing', 'Shanghai', 'Guangzhou', 'Hong Kong'],
      'answerIndex': 0,
    },
    {
      'question': 'What is the capital of Germany?',
      'options': ['Berlin', 'Munich', 'Hamburg', 'Frankfurt'],
      'answerIndex': 0,
    },
    {
      'question': 'What is the capital of Japan?',
      'options': ['Tokyo', 'Kyoto', 'Osaka', 'Hiroshima'],
      'answerIndex': 0,
    },
    {
      'question': 'What is the capital of Russia?',
      'options': ['Moscow', 'St. Petersburg', 'Novosibirsk', 'Yekaterinburg'],
      'answerIndex': 0,
    },
  ];

  late List<List<bool>> _isAnswered;
  int _score = 0;
  bool _quizCompleted = false;

  @override
  void initState() {
    super.initState();
    print('In initState');
    _initializeIsAnswered();
  }

  void _initializeIsAnswered() {
    print("in Initialized");
    _isAnswered = List.generate(
      allQuestions.length,
      (_) => List.filled(
        allQuestions[0]['options'].length,
        false,
      ),
    );
  }

  void _checkAnswer(int questionIndex, int selectedIndex) {
    if (_quizCompleted) return;

    if (_isAnswered[questionIndex][selectedIndex]) {
      return;
    }

    setState(() {
      _isAnswered[questionIndex] = List.generate(
        allQuestions[questionIndex]['options'].length,
        (index) => index == selectedIndex,
      );

      if (selectedIndex == allQuestions[questionIndex]['answerIndex']) {
        _score++;
      }

      if (!_isAnswered.any((answered) => answered.contains(false))) {
        _quizCompleted = true;
      }
    });
  }

  void _resetQuiz() {
    setState(() {
      _score = 0;
      _quizCompleted = false;
      _initializeIsAnswered();
    });
  }

  bool questionScreen = true;
  int questionIndex = 0;

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Question ${questionIndex + 1}/${allQuestions.length}',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _resetQuiz,
            ),
          ],
        ),
        body: _buildQuestionCard(questionIndex),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (questionIndex < allQuestions.length - 1) {
              setState(() {
                questionIndex++;
              });
            } else {
              setState(() {
                questionScreen = false;
              });
            }
          },
          child: const Icon(Icons.navigate_next),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'Quiz',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
           actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: isQuestionScreen,
            ),
          ],
        ),
        body: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Congratulations\n',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 40,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Your Score is : $_score/${allQuestions.length}',
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  Widget _buildQuestionCard(int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        height: 300,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.0),
                spreadRadius: 5,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  allQuestions[index]['question'],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  children: List.generate(
                    allQuestions[index]['options'].length,
                    (i) => GestureDetector(
                      onTap: () {
                        _checkAnswer(index, i);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        margin: const EdgeInsets.symmetric(vertical: 5.0),
                        decoration: BoxDecoration(
                          color: _isAnswered[index][i]
                              ? (i == allQuestions[index]['answerIndex']
                                  ? Colors.green
                                  : Colors.red)
                              : Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              allQuestions[index]['options'][i],
                              style: const TextStyle(fontSize: 16.0),
                            ),
                            if (_isAnswered[index][i])
                              Icon(
                                i == allQuestions[index]['answerIndex']
                                    ? Icons.check
                                    : Icons.close,
                                color: Colors.white,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}