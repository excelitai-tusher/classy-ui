import 'package:flutter/material.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios,
          size: 18,
          color: Colors.black,
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text("Write Review",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.cancel,
              size: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Rate Your Experience",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.star,
                  color: Colors.orange,
                  ),
                  Icon(Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(Icons.star,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Text("Review Title",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 320,
                    child: TextField(
                      decoration: InputDecoration(
                        focusColor: Colors.grey,
                          fillColor: Colors.grey,
                          hoverColor: Colors.grey,
                          hintText: 'Type here...'
                      ),
                      onChanged: (text) {
                      },
                      cursorColor: Colors.grey,
                    ),
                  ),
                  Text("0/25",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("NAME",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    decoration: InputDecoration(
                      focusColor: Colors.grey,
                      fillColor: Colors.grey,
                      hoverColor: Colors.grey,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      ),
                      hintText: 'Enter your name',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("EMAIL",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    decoration: InputDecoration(
                      focusColor: Colors.grey,
                      fillColor: Colors.grey,
                      hoverColor: Colors.grey,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      ),
                      hintText: 'Enter your email',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("YOUR REVIEW",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    //height: 200,
                    width: double.infinity,
                    child: TextField(
                      maxLines: 4,
                      style: TextStyle(
                          fontSize: 12.0,
                          height: 3.0,
                          color: Colors.black
                      ),
                      decoration: InputDecoration(
                        focusColor: Colors.grey,
                        fillColor: Colors.grey,
                        hoverColor: Colors.grey,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2.0, ),

                        ),
                        hintText: 'Write here..',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: InkWell(
                  onTap: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderAccepted()));
                  },
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Submit your review",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
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
