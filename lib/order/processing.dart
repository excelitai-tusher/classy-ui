import 'package:classy_ui_design/order/body.dart';
import 'package:flutter/material.dart';

class Order1 extends StatefulWidget {
  const Order1({Key? key}) : super(key: key);

  @override
  _Order1State createState() => _Order1State();
}

class _Order1State extends State<Order1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 800,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 58),
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                  ),
                  onPressed: (){},
                  child: Text("Today",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: (){},
                  child: Text("Tommorow",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: (){},
                  child: Text("Sat 17",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Text("3.52 PM",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 20,),
                Column(
                  children: [

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
