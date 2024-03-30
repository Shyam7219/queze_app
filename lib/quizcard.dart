import 'package:flutter/material.dart';
import 'package:queze_app/Models/model.dart';

class QuizCard extends StatelessWidget {
   QuizCard({super.key, this.quiz});

  Model? quiz;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    child: Center(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          const SizedBox(height: 120,),

           Text(
            quiz?.str1??'',
          ),

          const SizedBox(height: 30,),

           Text(
            quiz?.str2??'',
          ),

          const SizedBox(height: 50,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                child: Container(
                  width: 160,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5
                    ),
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(15)
                  ),  
                  child: Center(
                    child: Text(
                      quiz?.op1??'',
                    ),
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  width: 160,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5
                    ),
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(15)
                  ),  
                  child: InkWell(
                    child: Center(
                      child: Text(
                        quiz?.op2??'',
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),

          const SizedBox(height: 50,),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                child: Container(
                  width: 160,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5
                    ),
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(15)
                  ),  
                  child: Center(
                    child: Text(
                      quiz?.op3??'',
                    ),
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  width: 160,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5
                    ),
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(15)
                  ),  
                  child: Center(
                    child: Text(
                      quiz?.op4??'',
                    ),
                  ),
                ),
              )
            ],
          ),
           const SizedBox(height: 50,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.arrow_back_ios,
                    size: 35,
                    color: Colors.black,)
              ),
              IconButton(
                onPressed: (){
                  
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                    size: 35,
                    color: Colors.black,)
                    )
            ],
          ),
        ],
      ),
    ),
    );
  }
}