import 'package:flutter/material.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topRight,
            child: CircleAvatar(
                maxRadius: 13,
                child: Icon(
                  Icons.close_sharp,
                  size: 16,
                )),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
            decoration: const BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.all(Radius.circular(22))),
            child: Column(
              children: const [
                Text(
                  "Welcome to CryptoSet",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  "Manage all crypto assets in one place, easy and safe",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
