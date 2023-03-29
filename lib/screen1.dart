import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://uploads-ssl.webflow.com/61c0120d981c8f9d9322c0e0/61ca497efc91881256158064_blog%20article.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
              ),
              Container(
                padding: EdgeInsets.only(right: 2),
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color.fromARGB(136, 33, 33, 33)),
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 20,
                  color: Color.fromARGB(255, 179, 179, 179),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 5,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 145, 145, 145),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 145, 145, 145),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 145, 145, 145),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Orange Monky',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 22,
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/628px-Ethereum_logo_2014.svg.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '3.27 ETH',
                      style: TextStyle(
                          color: Color.fromARGB(255, 223, 189, 53),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80')),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'abenkoula71',
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 71, 71, 71),
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: Text(
                    '16:34:12',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'NFT Devils Collwction to be in the top 5 most popular. buy the collection at a hot price',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  wordSpacing: 4,
                  letterSpacing: 0.4,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 20),
              child: SliderButton(
                width: double.infinity,
                action: () {
                  ///Do something here
                  // Navigator.of(context).pop();
                },
                label: Text(
                  "Place Bid",
                  style: TextStyle(
                      color: Color(0xff4a4a4a),
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                icon: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/628px-Ethereum_logo_2014.svg.png'),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
