import 'package:flutter/material.dart';

class AppBarDesktop extends AppBar {
  AppBarDesktop({Key? key})
      : super(
            key: key,
            toolbarHeight: 100,
            backgroundColor: Colors.blue[700],
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100, right: 100),
                  child: Container(
                    child: Row(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                        Image(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ65buwZ6L99zb6qtZXNiuWI3OflsY7cNjRDz1414a60oGbkz3J3D_wXLOTGeMLR9ZOTRE&usqp=CAU'),
                          height: 60,
                          width: 260,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(2)),
                              child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(10),
                                      border: InputBorder.none,
                                      hintText: 'Search Your Products here')),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextButton(
                              onPressed: () {},
                              child: Text('Become A Seller',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: TextButton(
                              onPressed: () {},
                              child: Text('More',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.shopping_cart_sharp,
                                size: 20,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ));
}
