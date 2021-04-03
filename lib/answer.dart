import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: SizedBox(
            width: 300,
            height: 50,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 0.5,
              splashColor: Colors.red,
              color: Colors.orange[300],
              textColor: Colors.black,
              child: Text(answerText),
              onPressed: selectHandler,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
