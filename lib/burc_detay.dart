import 'package:flutter/material.dart';

import 'model/burc.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({super.key, required this.secilenBurc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(secilenBurc.burcAdi),
      ),
      body: Center(
        child: ListView(children: [
          Image.asset("images/" + secilenBurc.burcBuyukResim),
          Text(secilenBurc.burcDetayi),
          Text(secilenBurc.burcTarihi),
        ]),
      ),
    );
  }
}
