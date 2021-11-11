import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header1Widet extends StatelessWidget {
  const Header1Widet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      height: 170,
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Current Balance",
            style: TextStyle(color: Color(0xffCAC9CB), fontSize: 16),
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
            text: const TextSpan(
              text: "29.088933",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: "  ETH",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add_circle),
            label: const Text("\$1,294"),
          )
        ],
      ),
    );
  }
}
