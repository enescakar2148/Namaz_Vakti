import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.menu),
        title: const Text("Anasayfa"),
      ),
      body: const HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: SizedBox(
              height: 250,
              width: size,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage(
                          "lib/assets/images/cami.jpg",
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    children: [
                      Text("aaa"),
                      Text("aaa"),
                      Text("aaa"),
                      Text("aaa"),
                      Text("aaa"),
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
