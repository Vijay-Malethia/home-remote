import 'package:flutter/material.dart';

class Bg extends StatelessWidget {
  const Bg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Text(
            "Lesely's Home",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1542353436-312f0e1f67ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGdpcmwlMjBkcHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
          ),
        ],
      ),
    );
  }
}
