import 'package:flutter/material.dart';
import 'package:personal_expenses_flutter/models/transaction.dart';
import 'package:personal_expenses_flutter/widgets/new_transaction.dart';
import 'package:personal_expenses_flutter/widgets/transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 't1',
      title: 'new shoes',
      amount: 65.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'new shirt',
      amount: 55.0,
      date: DateTime.now(),
    ),
  ];

  _addNewTransaction(String title, double amount) {
    print('$title, $amount');
    final txNew = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransaction.add(txNew);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
