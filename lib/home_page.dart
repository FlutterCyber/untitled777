import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("str_home_page").tr(),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 150,
              color: Colors.black54,
              child: Center(
                child: const Text(
                  "str_payment",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ).tr(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 150,
              color: Colors.black54,
              child: Center(
                child: const Text(
                  "str_transfer",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ).tr(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 150,
              color: Colors.black54,
              child: Center(
                child: const Text(
                  "str_balance",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ).tr(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 150,
              color: Colors.black54,
              child: Center(
                child: const Text(
                  "str_sale",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ).tr(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.setLocale(const Locale('uz', 'UZ'));
                  },
                  child: Text("Uzbek"),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.setLocale(const Locale('en', 'US'));
                  },
                  child: Text("English"),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.setLocale(const Locale('ru', 'RU'));
                  },
                  child: Text("Russian"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
