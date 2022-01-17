import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderAccepted extends StatefulWidget {
  const OrderAccepted({Key? key}) : super(key: key);

  @override
  _OrderAcceptedState createState() => _OrderAcceptedState();
}

class _OrderAcceptedState extends State<OrderAccepted> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/Rectangle 210.png"),
                  fit: BoxFit.cover
              ),
            ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(FontAwesomeIcons.chevronCircleLeft, color: Colors.white,),
                      onPressed: () {},
                    ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 50),
                       child: Column(
                         children: [
                           Image(image: AssetImage("images/image 30.png")),
                         ],
                       ),
                     ),

                    SizedBox(height: 30,),
                    Center(
                      child: Column(
                        children: [
                          Text("Order Accepted",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 20,),
                          Text("Thank you so much for your \n order",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),

        ],

      ),
    );
  }
}
