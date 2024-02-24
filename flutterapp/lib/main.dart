import 'package:flutter/material.dart';
import 'package:flutterapp/Slpashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Slpashscreen(),
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
  var inputtextcontroller = TextEditingController();
  static const String keyName = "name";
  var Namevaluetext = " NO NAME";
  @override
  void initState() {
    super.initState();
    getValur();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: inputtextcontroller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "NAME"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          var name = inputtextcontroller.text.toString();
                          var sharepreference =
                              await SharedPreferences.getInstance();
                          sharepreference.setString(keyName, name);
                        },
                        child: Text("save")),
                    Text(Namevaluetext),
                  ],
                ),
              ),
            )));
  }

  void getValur() async {
    var initilazesharepp = await SharedPreferences.getInstance();
    var fgetname = initilazesharepp.getString(keyName);

    setState(() {
      Namevaluetext = fgetname != null ? fgetname : "no name";
    });
  }
}
