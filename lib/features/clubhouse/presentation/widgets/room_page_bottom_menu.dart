import 'package:flutter/material.dart';

class RoomPageBottomMenu extends StatelessWidget {
  const RoomPageBottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 15,
          left: 20,
          right: 20,
        ),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Material(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[200],
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '✌🏽',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Leave quietly',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey[200],
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey[200],
                  child: const Text(
                    '✋',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
