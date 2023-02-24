import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: NetworkImage(
                  'https://i.pinimg.com/736x/68/c0/d8/68c0d850b4e8ae826c7ba3514dd52c81.jpg',
                  // 'https://randomuser.me/api/portraits/women/90.jpg',
                ),
              ),
            ),
            Text(
              'Gato',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Domestic Shorthair',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 4),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                "Gato is a beautiful cat with soft, fluffy black and white fur. She has big, bright green eyes that shine in the sunlight, and a long, elegant tail that she swishes back and forth when she's happy. Gato is a playful and curious cat who loves to explore her surroundings and investigate new things. She enjoys playing with toys, especially ones that make crinkling or rustling noises. When she's not playing, Gato likes to nap in cozy spots around the house, such as on a sunny windowsill or a soft, warm blanket. She is a friendly cat who loves to be petted and cuddled, and will often curl up in her owner's lap for a good snuggle. Gato is a loyal and loving companion who brings joy and happiness to everyone she meets.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 26, 24, 24),
                ),
              ),
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
