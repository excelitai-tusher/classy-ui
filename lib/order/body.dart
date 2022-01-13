import 'package:classy_ui_design/constant.dart';
import 'package:classy_ui_design/model/item%20description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
            height: MediaQuery.of(context).size.height/ 9,
            width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) => Category(index),
          ),
          ),

          item(),
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


}

Widget item(){
  List names = [Item.list,];
  return SizedBox(
    height: 30,
    child: ListView.separated(
      shrinkWrap: true,
      //scrollDirection: Axis.horizontal,
      itemCount: Item.list.length,
      itemBuilder: (BuildContext context, i) {
        Item product= Item.list[i];
        return  item();
      },
      separatorBuilder: (context, index) {
        return ListView(
          children: [
             SingleChildScrollView(
               child: Column(
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        title:Text(names.toString()) ,
                      ),
                    ),
                  ),
                ],
            ),
             ),
          ],

        );
      },

    ),
  );
}
