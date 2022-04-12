import 'package:custome_widget/custome_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            CustomeWidget(itemcount: 20,
              itembuilder: (context,index){
              return const Text('ShoebHadi');
              },
            ),
            CustomeWidget(itemcount: 20,
              itembuilder: (context,index){
                return Container(
                  height: 100,
                  width: 150,
                  color: Colors.green[100],
                );
              },
            ),
            CustomeWidget(itemcount: 20,
              itembuilder: (context,index){
                return Container(
                  width: 150,
                  color: Colors.green[100],
                  child: const Center(child: Text('Text'),),
                );
              },padding:const EdgeInsets.all(12.00) ,
              crossAxisAlignment: WrapCrossAlignment.end,spacing: 10,
              wrapAlignment: WrapAlignment.spaceAround,
            ),
          ],
        ),
      ),
    );
  }
}

