import 'package:flutter/material.dart';

class AppBarTablet extends AppBar {
  AppBarTablet({Key? key})
      : super(
            key: key,
            toolbarHeight: 150,
            backgroundColor: Colors.blue[700],
            title: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Image(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ65buwZ6L99zb6qtZXNiuWI3OflsY7cNjRDz1414a60oGbkz3J3D_wXLOTGeMLR9ZOTRE&usqp=CAU'),
                          height: 60,
                          width: 200,
                        ),
                      ),
                      // Image(image: NetworkImage('https://cavinkare.com/img/2021/12/Flipkart-Logo-removebg-preview.png'),width: 60,height: 60,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(2)),
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10.0),
                                  border: InputBorder.none,
                                  hintText: 'Search Your Products Here'),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left:10),
                        child: ElevatedButton(
                            onPressed: () {},
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue[600],
                                  backgroundColor: Colors.white),
                            )),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Become A Seller',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'More',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ],
            ));
}
