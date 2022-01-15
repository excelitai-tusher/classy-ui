import 'package:flutter/material.dart';

class Cancel extends StatefulWidget {
  const Cancel({Key? key}) : super(key: key);

  @override
  _CancelState createState() => _CancelState();
}

class _CancelState extends State<Cancel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: Center(child: Image(image: AssetImage("images/image 29.png"))),
              ),
              Container(
                child: Column(
                  children: [
                    Text("This order will no longer be visible in your"),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Column(
                    children: [
                      Text("cart."),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
            Container(
              height: 100,
              width: 360,
              decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide.none),
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(

                      ),
                    ],
                  ),
                ],
              ),
            ),
        //        Container(
        //           height: 120,
        //            child: Padding(
        //            padding: const EdgeInsets.only(left: 20, right: 20),
        //              child: Card(
        //             color: Colors.white,
        //             child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //            children: [
        //           Padding(
        //             padding: const EdgeInsets.all(15.0),
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Row(
        //                   children: [
        //                     Text("Item name: ", style: TextStyle(color: Colors.black),
        //                     ),
        //                     Text(product.ItemName.toString(), style: TextStyle(color: Colors.black38)),
        //                   ],
        //                 ),
        //                 Row(
        //                   children: [
        //                     Text("Order No: ", style: TextStyle(color: Colors.black),
        //                     ),
        //                     Text(product.OrderNo.toString(), style: TextStyle(color: Colors.black38)),
        //                   ],
        //                 ),
        //               Row(
        //                 children: [
        //                   Text("Quantity: ", style: TextStyle(color: Colors.black),
        //                   ),
        //                   Text(product.Quantity.toString(), style: TextStyle(color: Colors.black38)),
        //                 ],
        //               ),
        //             ],
        //           ),
        //         ),
        //       Padding(
        //         padding: const EdgeInsets.all(15.0),
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //           children: [
        //             Text(product.Date.toString()),
        //             Row(
        //               children: [
        //                 Text("Total Amount: ", style: TextStyle(color: Colors.black),
        //                 ),
        //                 Text(product.TotalAmount.toString(), style: TextStyle(color: Colors.black38)),
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 Text("Status: ", style: TextStyle(color: Colors.black),
        //                 ),
        //                 Text(product.Status.toString(), style: TextStyle(color: Colors.green)),
        //                  ],
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // );
    ],
  ),
),
      ),
);
}
}
