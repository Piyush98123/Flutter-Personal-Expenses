import 'package:flutter/material.dart';
import '../models/transaction.dart';

class newTransaction extends StatelessWidget {
  final Function addtx;
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();
  newTransaction(this.addtx);
  void submitbutton() {
    final entertitle = titlecontroller.text;
    final enteramount = double.parse(amountcontroller.text);
    if (entertitle.isEmpty || enteramount <= 0) {
      return;
    }
    addtx(titlecontroller.text, double.parse(amountcontroller.text));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shadowColor: Colors.purple,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              controller: titlecontroller,
              onSubmitted: (_) => submitbutton(),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountcontroller,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitbutton(),
            ),
            FlatButton(
                onPressed: submitbutton,
                child: Text('Add Transaction'),
                color: Colors.lightBlueAccent),
          ],
        ),
      ),
    );
  }
}
