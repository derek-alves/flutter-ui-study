import 'package:flutter/material.dart';
import 'package:ui_study/src/ui/use_tela_1/widgets/widgets.dart';

class CoinList extends StatelessWidget {
  const CoinList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: Column(
        children: const [
          CoinInfoCard(),
          CoinInfoCard(),
          CoinInfoCard(),
          CoinInfoCard(),
          CoinInfoCard(),
          CoinInfoCard(),
          CoinInfoCard()
        ],
      ),
    );
  }
}
