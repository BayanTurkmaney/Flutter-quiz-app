import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 30) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 45) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 50) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange[900]),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              child: Text(
                'Restart Quiz!',
              ),
              textColor: Colors.black,
              onPressed: resetHandler,
            ),
          ],
        ),
      ),
    );
  }
}
