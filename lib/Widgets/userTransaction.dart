import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'newTransaction.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class userTransaction extends StatefulWidget {
  @override
  _userTransactionState createState() => _userTransactionState();
}

class _userTransactionState extends State<userTransaction> {
  List<Transaction> _usertransaction = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 300,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Grocery',
      amount: 700,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txtitle, double txamount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txtitle,
        amount: txamount,
        date: DateTime.now());
    setState(() {
      _usertransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        newTransaction(_addNewTransaction),
        TransactionList(_usertransaction),
      ],
    );
  }
}
