import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var opac = 1.0;

  //for toggle
  bool flag = true;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                child: Container(height: 100,
                  width: 200,
                color: Colors.brown,),
                opacity: opac,
                duration: Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
              ),

              ElevatedButton(onPressed: (){

                if (flag){
                 opac=0.0;
                  flag=false;
                }
                else{
                  opac=1.0;
                  flag=true;
                }
                setState(() {});

              }, child: Text("animate")),
            ],
          ),
        )
    );
  }
}
