//Created by Nurul Intan A

import 'package:flutter/material.dart';

class CustomMenu extends StatefulWidget {
  final String title;
  final IconData icon;
  final Widget builder;
  const CustomMenu({
    Key? key,
    this.title = '',
    required this.icon,
    this.builder = const SizedBox(),
  }) : super(key: key);

  @override
  State<CustomMenu> createState() => _CustomMenuState();
}

class _CustomMenuState extends State<CustomMenu> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return widget.builder;
            },
          ),
        );
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                )),
            child: Center(
              child: Icon(
                widget.icon,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Text(widget.title),
        ],
      ),
    );
  }
}
