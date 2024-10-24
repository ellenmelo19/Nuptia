import 'package:app/classes/cerimonyItem.dart';
import 'package:flutter/material.dart'; 

class Cerimonyitemlist extends StatelessWidget {
  final List<cerimonyItem> dataArray;

  const Cerimonyitemlist({required this.dataArray});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: dataArray.length, // Tamanho do array
      itemBuilder: (context, index) {
        return ListTile(
          
        );
      },
    );
  }
}