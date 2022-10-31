import 'package:flutter/material.dart';

class TilesMobile extends StatefulWidget {
  const TilesMobile({Key? key}) : super(key: key);

  @override
  State<TilesMobile> createState() => _TilesMobileState();
}

class _TilesMobileState extends State<TilesMobile> {
  List images = [
    "https://rukminim1.flixcart.com/image/150/150/kyag87k0/computer/7/r/u/raider-ge66-12ugs-gaming-laptop-msi-original-imagakb9zw7gqzcm.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/150/150/ks6ef0w0/tripod/tripod/4/d/c/nz-tpd-3110-nainz-original-imag5svcdbqxyas6.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/150/150/k4a7c7k0/printer/y/j/z/canon-e3370-original-imafn2wyyxjjvzd6.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/150/150/kirr24w0/computer/z/r/b/dell-na-laptop-original-imafyhm5nzfum7jj.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/150/150/kjuby4w0/deodorant/v/c/d/400-one8-intense-fresh-deo-pack-of-2-200ml-x-2-2-perfume-body-original-imafzbn4nv2zhccp.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/150/150/kdnf98w0/monitor/s/a/d/va24ehe-90lm0560-b01110-asus-original-imafug9sftuzdxr8.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/150/150/kyag87k0/computer/7/r/u/raider-ge66-12ugs-gaming-laptop-msi-original-imagakb9zw7gqzcm.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/150/150/ks6ef0w0/tripod/tripod/4/d/c/nz-tpd-3110-nainz-original-imag5svcdbqxyas6.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/150/150/k4a7c7k0/printer/y/j/z/canon-e3370-original-imafn2wyyxjjvzd6.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/150/150/kirr24w0/computer/z/r/b/dell-na-laptop-original-imafyhm5nzfum7jj.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/150/150/kjuby4w0/deodorant/v/c/d/400-one8-intense-fresh-deo-pack-of-2-200ml-x-2-2-perfume-body-original-imafzbn4nv2zhccp.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/150/150/kdnf98w0/monitor/s/a/d/va24ehe-90lm0560-b01110-asus-original-imafug9sftuzdxr8.jpeg?q=70"
  ];
  List tit1 = [
    "12th Gen Laptops",
    "Top deals ",
    "Printers",
    "Ryzen Powered",
    "Deodrants ",
    "Asus Monitors",
    "12th Gen Laptops",
    "Top deals ",
    "Printers",
    "Ryzen Powered",
    "Deodrants ",
    "Asus Monitors"
  ];
  List tit2 = [
    "From Rs 79999",
    "Shop Now!",
    "From ₹2336",
    "From ₹35990",
    "Flat off",
    "From ₹14999",
    "From Rs 79999",
    "Shop Now!",
    "From ₹2336",
    "From ₹35990",
    "Flat off",
    "From ₹14999"
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GridView.builder(
          shrinkWrap: true,
          itemCount: images.length,
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.9,
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                color: Color.fromARGB(255, 255, 255, 255),
                elevation: 10,
                child: Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Column(
                        children: [
                          Image(
                            image: NetworkImage(images[i]),
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(height: 5),
                          Text(tit1[i],
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                              )),
                          SizedBox(height: 5),
                          Text(tit2[i],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                              )),
                        ],
                      ),
                    )),
              ),
            );
          }),
    );
  }
}
