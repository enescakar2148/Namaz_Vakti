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
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: 2, color: Colors.white))),
                                child: const Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    "İstanbul",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: const [
                                        Text(
                                          "Hicri",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text(
                                            "4 Recep 1443",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: const [
                                        Text(
                                          "Miladi",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text(
                                            "05 Şubat 2022 Cumartesi",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
