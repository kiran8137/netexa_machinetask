

import 'package:flutter/material.dart';

class BusinessKpiWidget extends StatelessWidget {
  const BusinessKpiWidget({
    super.key, required this.index,
  });
  
  final int index;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 95,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
        children: [
          Container(
            height: 15,
            width: 15,
            decoration:   BoxDecoration(
              shape: BoxShape.circle,
              
               color: index.isOdd ?
                const Color.fromARGB(255, 180, 200, 93) :
                  const Color.fromARGB(171, 241, 100, 35)
            ),
          ),
            SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('123$index',style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),),
                const Text('Occupied 68%', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10))
              ],
            ),
          )
        ],
      ),
    );
  }
}
