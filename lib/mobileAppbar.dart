import 'package:flutter/material.dart';

class AppBarMobile extends AppBar {
  AppBarMobile({Key? key})
      : super(
            key: key,
            toolbarHeight: 100,
            backgroundColor: Colors.blue[700],
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                    Image(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ65buwZ6L99zb6qtZXNiuWI3OflsY7cNjRDz1414a60oGbkz3J3D_wXLOTGeMLR9ZOTRE&usqp=CAU'),
                      height: 30,
                    ),
                    Expanded(child: SizedBox()),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart_sharp,
                          size: 20,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ))
                  ],
                ),
                SizedBox(
                  height: 40,
                  child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          alignLabelWithHint: true,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                          border: OutlineInputBorder(),
                          hintText: 'Search Your Products here')),
                ),
              ],
            ));
}
