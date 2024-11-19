import 'package:flutter/material.dart';

class RevenueCard extends StatelessWidget {
  const RevenueCard({
    super.key,
    required this.percentage,
    required this.upOrDown,
    required this.number,
    required this.status,
  });

  final String percentage;
  final IconData upOrDown;
  final String number;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child:   Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(upOrDown,
                          size: 15, color: const Color.fromARGB(255, 69, 159, 72)),
                      Text(
                        '$percentage%',
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const Icon(Icons.more_horiz_sharp)
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              number,
              style: const TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
            ),
            Text(
               status,
              style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
