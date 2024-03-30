import 'package:flutter/material.dart';
import 'package:queze_app/Models/model.dart';
import 'package:queze_app/quizcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int count =0;

  List<Model> list=[
    Model(
      str1: 'Question No. 1/10',
      str2: 'What is the capital of France?',
      op1: 'a) London',
      op2: 'b) Paris',
      op3: 'c) Rome',
      op4: 'd) Berlin'
      ),
      Model(
      str1: 'Question No. 2/10',
      str2: 'Which planet is known as the "Red Planet"?',
      op1: 'a) Jupiter',
      op2: 'b) Mars',
      op3: 'c) Venus',
      op4: 'd) Mercury'
      ),
      Model(
      str1: 'Question No. 3/10',
      str2: 'Who wrote the play "Romeo and Juliet"?',
      op1: 'a) William Shakespeare',
      op2: 'b) Charles Dickens',
      op3: 'c) Jane Austen',
      op4: 'd) F. Scott Fitzgerald'
      ),
       Model(
      str1: 'Question No. 4/10',
      str2: 'What is the chemical symbol for water?',
      op1: 'a) Wa',
      op2: 'b) H2O',
      op3: 'c) W',
      op4: 'd) HO'
      ),
      Model(
      str1: 'Question No. 5/10',
      str2: 'Which country is famous for its pyramids?',
      op1: 'a) Greece',
      op2: 'b) Italy',
      op3: 'c) Egypt',
      op4: 'd) Mexico'
      ),
      Model(
      str1: 'Question No. 6/10',
      str2: 'What is the tallest mountain in the world?',
      op1: 'a) Mount Everest',
      op2: 'b) K2',
      op3: 'c) Kilimanjaro',
      op4: 'd) Denali'
      ),
      Model(
      str1: 'Question No. 7/10',
      str2: 'Who painted the Mona Lisa?',
      op1: 'a) Leonardo da Vinci',
      op2: 'b) Vincent van Gogh',
      op3: 'c) Pablo Picasso',
      op4: 'd) Claude Monet'
      ),
      Model(
      str1: 'Question No. 8/10',
      str2: 'What is the largest mammal in the world?',
      op1: 'a) Elephant',
      op2: 'b) Giraffe',
      op3: 'c) Blue whale',
      op4: 'd) Polar bear'
      ),
      Model(
      str1: 'Question No. 9/10',
      str2: 'In what year did the Titanic sink?',
      op1: 'a) 1910',
      op2: 'b) 1912',
      op3: 'c) 1915',
      op4: 'd) 1920'
      ),
      Model(
      str1: 'Question No. 10/10',
      str2: 'What is the capital of France?',
      op1: 'a) Au',
      op2: 'b) Ag',
      op3: 'c) G',
      op4: 'd) Go'
      ) 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Quiz App"),
        backgroundColor: const Color.fromARGB(255, 86, 149, 147),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context,index){
            return QuizCard(
              quiz: list[index],
            );

          }),
      )
    );
  }
}