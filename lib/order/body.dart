import 'package:classy_ui_design/constant.dart';
import 'package:classy_ui_design/model/item%20description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'my order.dart';

class Body extends StatefulWidget {
  const Body({Key? key, }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> category = ["Delivered", "Processing", "Cancelled"];
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/ 10,
            width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) => Category(index),
          ),
          ),

          item(),
          Order(),
        ],
      ),
    );
  }

   Widget Category(int index) {
     return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
           child: GestureDetector(
             onTap: () {
               setState(() {
                 selectedIndex = index;
               });
             },
             child: Column(
               //crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(height: 20,),
                 Text(
                   category[index],
                   style: TextStyle(
                     color: selectedIndex == index ? kTextColor : kTextLightColor,
                     fontWeight: FontWeight.bold,
                     fontSize: 18,
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.only(top: kDefaultPaddin),
                   height: 2,
                   width: 30,
                   color: selectedIndex == index ? Colors.black : Colors.transparent,
                 ),
               ],
             ),
           ),
         ),
       ],
     );
   }

  Widget item(){
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: Item.list.length,
      itemBuilder: (BuildContext context, i) {
        Item product= Item.list[i];
        return Container(
          height: 120,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Card(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Item name: ", style: TextStyle(color: Colors.black),
                          ),
                          Text(product.ItemName.toString(), style: TextStyle(color: Colors.black38)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Order No: ", style: TextStyle(color: Colors.black),
                          ),
                          Text(product.OrderNo.toString(), style: TextStyle(color: Colors.black38)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Quantity: ", style: TextStyle(color: Colors.black),
                          ),
                          Text(product.Quantity.toString(), style: TextStyle(color: Colors.black38)),
                        ],
                      ),
                    ],
                 ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(product.Date.toString()),
                        Row(
                          children: [
                            Text("Total Amount: ", style: TextStyle(color: Colors.black),
                            ),
                            Text(product.TotalAmount.toString(), style: TextStyle(color: Colors.black38)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Status: ", style: TextStyle(color: Colors.black),
                            ),
                            Text(product.Status.toString(), style: TextStyle(color: Colors.green)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
           ),
         );
        },
      separatorBuilder: (context, index) {
        return SizedBox(width: 3,);
      },
    );
  }
}

