import 'package:delidove_app/utils/export_lib.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final List<String> imagePaths = [
    'assets/images/bouquet.png',
    'assets/images/vegetables.png',
    'assets/images/flower-in-vase.png',
    'assets/images/flower-basket.png',
    'assets/images/flower-in-vase.png',
    'assets/images/flower-centerpiece.png',
  ];
  final List<String> imagePaths2 = [
    'assets/images/flower-centerpiece.png',
    'assets/images/flower-basket.png',
    'assets/images/flower-in-vase.png',
    'assets/images/vegetables.png',
    'assets/images/flower-in-vase.png',
    'assets/images/bouquet.png',
  ];
  final List<String> itemsname = [
    'Bouquet',
    'Fruits',
    'Vase',
    'Basket',
    'Vase',
    'Room',
  ];
  final List<String> itemsname2 = [

    'Vase',
    'Bouquet',
    'Basket',
    'Fruits',
    'Vase',
    'Room',
  ];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: appColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Edgware Road',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'London',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 48,
                          width: w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(50), // Set border radius
                            border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                          child: Center(
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(15.0),
                                prefixIcon: Icon(Icons.search),
                                hintText: 'Search',
                                border: InputBorder
                                    .none, // Remove the default border
                              ),
                            ),
                          )),
                    ]),
                  )),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  height: 200, // Set the height of the list
                  child: ListView.builder(
                    scrollDirection: Axis
                        .horizontal, // Set scrolling direction to horizontal
                    itemCount: 6, // Number of items in the list
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          margin: EdgeInsets.all(
                              8.0), // Add margin between containers
                          width: 150, // Set width of each container
                          decoration: BoxDecoration(
                              color: appColor,
                              borderRadius: BorderRadius.circular(
                                  10)), // Assign color from the list
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/Shoppingcart.png',
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Order Grossery',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Get Grossery Delivery To You at  Your DoorStep',
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 8, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 100,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/vegetables.png',
                                          ),
                                          fit: BoxFit.cover)),
                                )
                              ],
                            ),
                          ));
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(color: Greycclr),
                    ),
                    SizedBox(width: 10),
                    Expanded(child: Divider()),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      height: 110,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: itemsname.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage(imagePaths[index]),
                                ),
                                SizedBox(
                                    height:
                                        5), // Add space between CircleAvatar and text
                                Text(
                                  itemsname[index],// Example text, you can replace it with your actual category name
                                  style: TextStyle(color: Greycclr),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Text(
                      'Popular',
                      style: TextStyle(color: Greycclr),
                    ),
                    SizedBox(width: 10),
                    Expanded(child: Divider()),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  height: 200, // Set the height of the list
                  child: ListView.builder(
                    scrollDirection: Axis
                        .horizontal, // Set scrolling direction to horizontal
                    itemCount: 6, // Number of items in the list
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 190,
                        width: 155,
                        margin: EdgeInsets.all(
                            10.0), // Add margin between containers
                        // Add margin between containers

                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5.0,
                                spreadRadius: 1.0,
                                color: Colors.black12)
                          ],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 10, top: 10),
                                  child: Icon(
                                    Icons.add,
                                    weight: 700,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 120,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/vase-png.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              'Farhan',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Text(
                      'Popular',
                      style: TextStyle(color: Greycclr),
                    ),
                    SizedBox(width: 10),
                    Expanded(child: Divider()),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  height: 200, // Set the height of the list
                  child: ListView.builder(
                    scrollDirection: Axis
                        .horizontal, // Set scrolling direction to horizontal
                    itemCount: 6, // Number of items in the list
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 190,
                        width: 155,
                        margin: EdgeInsets.all(
                            10.0), // Add margin between containers
                        // Add margin between containers

                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5.0,
                                spreadRadius: 1.0,
                                color: Colors.black12)
                          ],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 10, top: 10),
                                  child: Icon(
                                    Icons.add,
                                    weight: 700,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 120,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(imagePaths2[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              itemsname2[index],
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Text(
                      'Popular',
                      style: TextStyle(color: Greycclr),
                    ),
                    SizedBox(width: 10),
                    Expanded(child: Divider()),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  height: 200, // Set the height of the list
                  child: ListView.builder(
                    scrollDirection: Axis
                        .horizontal, // Set scrolling direction to horizontal
                    itemCount: 6, // Number of items in the list
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 190,
                        width: 155,
                        margin: EdgeInsets.all(
                            10.0), // Add margin between containers
                        // Add margin between containers

                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5.0,
                                spreadRadius: 1.0,
                                color: Colors.black12)
                          ],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 10, top: 10),
                                  child: Icon(
                                    Icons.add,
                                    weight: 700,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 120,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(imagePaths[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              itemsname[index],
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
