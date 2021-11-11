import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBar1Widget extends PreferredSize {
  AppBar1Widget({Key? key})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(95),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 95,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Color(0xffEFEEF2),
                ),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 12),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color(0xff647DDA).withAlpha(30),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: const Icon(
                        Icons.coronavirus_outlined,
                        color: Color(0xff062FC2),
                      ),
                    ),
                    const Text(
                      "Ethereum",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 30,
                )
              ],
            ),
          ),
        );
}
