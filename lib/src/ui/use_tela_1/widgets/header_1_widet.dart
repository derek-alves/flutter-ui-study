import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header1Widet extends StatelessWidget {
  const Header1Widet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 140,
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "\$29.088933",
            style: TextStyle(
              color: Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.49,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle),
                  label: const Text("\$1,294"),
                  style: TextButton.styleFrom(primary: Colors.blue),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle),
                  label: const Text(
                    "\$1,294",
                  ),
                  style: TextButton.styleFrom(primary: Colors.green),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
