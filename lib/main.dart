import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ejemplpo TabBar",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MiPaguinaInicial(),
    );
  }
}

class MiPaguinaInicial extends StatefulWidget {
  const MiPaguinaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaguinaInicial> createState() => _MiPaguinaInicialState();
}

class _MiPaguinaInicialState extends State<MiPaguinaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar josue barrios"),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Flights",
                icon: Icon(Icons.percent),
              ), //texto icono
              Tab(text: "credito", icon: Icon(Icons.wallet)),
              Tab(text: "bloqueo", icon: Icon(Icons.dangerous_outlined)),
              Tab(text: "tienda", icon: Icon(Icons.wallet_giftcard)),
            ],
          ),
        ),
        body: TabBarView(
          children: const <Widget>[
            Center(
              child: Text(
                "descuento",
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 80),
              ),
            ),
            Center(
              child: Text(
                "credito",
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 80),
              ),
            ),
            Center(
              child: Text(
                "bloqueo",
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 80),
              ),
            ),
            Center(
              child: Text(
                "tienda",
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 80),
              ),
            )
          ],
        ),
      ),
    );
  }
}
