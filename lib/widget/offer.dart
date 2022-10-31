import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flipkart/local_nots.dart';

class OfferWidget extends StatelessWidget {
  
  const OfferWidget({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 50,
        color: Color.fromARGB(255, 222, 219, 219),
        child: Row(
          children: [
            Text(
              "",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Best of Electronics",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                )
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: Text('View All')),
            )
          ],
        ),
      ),
    );
  }
}
