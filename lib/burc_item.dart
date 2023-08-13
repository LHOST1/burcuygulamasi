import 'package:flutter/material.dart';
import 'package:flutter_module_1/burc_detay.dart';

import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;

  const BurcItem({super.key, required this.listelenenBurc});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(listelenenBurc.burcAdi),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => BurcDetay(secilenBurc: listelenenBurc)));
        },
        leading: Image.asset(
          "images/" + listelenenBurc.burcKucukResim,
        ),
        subtitle: Text(listelenenBurc.burcTarihi),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.pink,
        ),
      ),
    );
  }
}
