import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color backgroundColor = Colors.red;
  Color bgwhiteColor = Colors.white;
  bool isRed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isRed ? backgroundColor : bgwhiteColor,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'this is the title',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: const [Icon(Icons.wifi, color: Colors.white)],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  Container(
            //   height: 150,
            //   margin: const EdgeInsets.all(20.0),
            //   width:double.infinity,
            //   color: Colors.red,
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isRed = !isRed;
                });
              },
              child: const Text('Click me if you dare'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NewPage(isRed: isRed);
                    },
                  ),
                );
              },
              child: const Text('go to new page'),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.ads_click)),
            // child: Container (
            //   margin: const EdgeInsets.all(20.0),
            //     height: 150,
            //      padding: const EdgeInsets.all(10.0),
            //      width:double.infinity,
            //       color: Colors.yellow,
            // ),
            Wrap(
              children: [
                Image.network(
                  'https://cdn.mos.cms.futurecdn.net/W2xQZxs7T2gUE2fMbUv4s6-1920-80.jpg',
                  height: 150,
                ),
                Image.network(
                  'https://cdn.mos.cms.futurecdn.net/W2xQZxs7T2gUE2fMbUv4s6-1920-80.jpg',
                  height: 150,
                ),
                Image.network(
                  'https://cdn.mos.cms.futurecdn.net/W2xQZxs7T2gUE2fMbUv4s6-1920-80.jpg',
                  height: 150,
                ),
                Image.network(
                  'https://cdn.mos.cms.futurecdn.net/W2xQZxs7T2gUE2fMbUv4s6-1920-80.jpg',
                  height: 150,
                ),
                Image.network(
                  'https://cdn.mos.cms.futurecdn.net/W2xQZxs7T2gUE2fMbUv4s6-1920-80.jpg',
                  height: 150,
                ),
                Image.network(
                  'https://cdn.mos.cms.futurecdn.net/W2xQZxs7T2gUE2fMbUv4s6-1920-80.jpg',
                  height: 150,
                ),
                Image.network(
                  'https://cdn.mos.cms.futurecdn.net/W2xQZxs7T2gUE2fMbUv4s6-1920-80.jpg',
                  height: 150,
                ),
              ],
            ),
            Center(
              child: Image.network(
                'https://cdn.mos.cms.futurecdn.net/W2xQZxs7T2gUE2fMbUv4s6-1920-80.jpg',
                height: 150,
              ),
            ),
            Center(
              child: Image.network(
                'https://cdn.mos.cms.futurecdn.net/W2xQZxs7T2gUE2fMbUv4s6-1920-80.jpg',
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  const NewPage({super.key, required this.isRed});

  final bool isRed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isRed ? Colors.red : Colors.white,
      appBar: AppBar(title: const Text('New Page')),
      body: Center(
        child: Text(
          isRed ? 'Red mode is active' : 'White mode is active',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
