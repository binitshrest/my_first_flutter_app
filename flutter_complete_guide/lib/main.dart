import 'package:flutter/material.dart';

//void main(){
//  runApp(MyApp());
//}
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex]
              ,),
            RaisedButton(
              child: Text('The Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('The Answer 2'),
              onPressed: () => print('The Answer 2 is chosen'),
            ),
            RaisedButton(
              child: Text('The Answer 3'),
              onPressed: (){
                //..
                print('The Answer 3 is chosen');
              },
            ),
          ],
        ),
      ),
    ); // Scaffold //Material App
  }
}
