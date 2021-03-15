import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: TransferList(),
          appBar: AppBar(
            title: Text('Transferências'),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
          ),
        ),
      ),
    );

class TransferList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransferItem(Transfer(234.0, 1873)),
        TransferItem(Transfer(134.0, 1533)),
        TransferItem(Transfer(3254.0, 1233)),
        TransferItem(Transfer(8123.0, 1103)),
      ],
    );
  }
}

class TransferItem extends StatelessWidget {
  final Transfer _transfer;

  TransferItem(this._transfer);

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transfer.value.toString()),
        subtitle: Text(_transfer.account.toString()),
      ),
    );
  }
}

class Transfer {
  final double value;
  final int account;

  Transfer(this.value, this.account);
}
