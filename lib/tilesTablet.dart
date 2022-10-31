import 'package:flutter/material.dart';

class TilesTablet extends StatefulWidget {
  const TilesTablet({Key? key}) : super(key: key);

  @override
  State<TilesTablet> createState() => _TilesTabletState();
}

class _TilesTabletState extends State<TilesTablet> {
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
    "Top deals of Camera ",
    "Printers",
    "Ryzen Powered",
    "Deodrants ",
    "Asus Monitors",
    "12th Gen Laptops",
    "Top deals of Camera ",
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
    return SingleChildScrollView(
            child: SizedBox(
        height: 350,
        child: Center(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    height: 250,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Card(
                        child: ListTile(
                          title: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(image: NetworkImage(images[index]),height: 100,width:100),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    tit1[index],
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    tit2[index],
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        elevation: 10,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
