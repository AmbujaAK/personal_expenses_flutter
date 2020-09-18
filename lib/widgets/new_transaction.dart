import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;
  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final newtitle = titleController.text;
    final newAmount = double.parse(amountController.text);

    if (newtitle.isEmpty || newAmount <= 0) return;

    widget.addTx(newtitle, newAmount);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onChanged: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onChanged: (_) => submitData(),
            ),
            FlatButton(
              onPressed: submitData,
              child: Text('Add Transaction'),
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
