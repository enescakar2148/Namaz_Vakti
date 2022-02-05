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
        backgroundColor: Colors.blueGrey.shade700,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: "Menu Button",
          onPressed: () {
            print("Menu Button On Clicked");
          },
        ),
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
                              const City(),
                              const Dates(),
                              Vakits(),
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: KalanSure(),
          )
        ],
      ),
    );
  }

  Column Vakits() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              VakitTexts("İmsak"),
              VakitTexts("Güneş"),
              VakitTexts("Öğle"),
              VakitTexts("İkindi"),
              VakitTexts("Akşam"),
              VakitTexts("Yatsı"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              VakitSaatTexts("05.30"),
              VakitSaatTexts("06.30"),
              VakitSaatTexts("13.10"),
              VakitSaatTexts("16.30"),
              VakitSaatTexts("18.30"),
              VakitSaatTexts("19.30"),
            ],
          ),
        ),
      ],
    );
  }

  Text VakitSaatTexts(String saat) {
    return Text(
      saat,
      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
    );
  }

  Text VakitTexts(String vakit) {
    return Text(
      vakit,
      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
    );
  }
}

class KalanSure extends StatelessWidget {
  const KalanSure({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          "https://namazvakti.diyanet.gov.tr/images/r4.gif",
          width: 100,
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Text(
                "Öğle",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Text(
                "Vaktin Çıkmasına Kalan Süre",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    "02.30",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
                Text(
                  "Saat",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

class Dates extends StatelessWidget {
  const Dates({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              Text(
                "Hicri",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "4 Recep 1443",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
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
                    fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "05 Şubat 2022 Cumartesi",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class City extends StatelessWidget {
  const City({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 2, color: Colors.white))),
      child: const Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: Text(
          "İstanbul",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w900, fontSize: 18),
        ),
      ),
    );
  }
}
