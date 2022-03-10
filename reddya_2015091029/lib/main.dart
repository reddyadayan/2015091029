import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Ida Wayan Reddya Baswara'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get color => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: GridView.count(
            crossAxisCount: 1,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: ClipOval(
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                      'https://www.instagram.com/p/COFl4NLh5za/',
                      fit: BoxFit.cover),
                ),
              ),
              Card(
                  child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Ida Wayan Reddya Baswara",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    const Divider(
                      height: 1,
                      color: Colors.black,
                    ),
                    const Text(
                        "Nama saya reddya berasal dari nusa tenggara barat, tinggal di mataram dan melanjutkan pendidikan di universitas pendidikan ganesha mengambil program studi sistem informasi.",
                        style: TextStyle(fontSize: 14)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: const Text("Java",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: const Text("CSS",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: const Text("C++",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: const Text("PHP",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: <Widget>[
                            const Icon(
                              Icons.mail,
                              color: Colors.orange,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
            ],
          ),
        ));
  }
}
