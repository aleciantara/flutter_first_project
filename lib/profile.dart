import 'package:flutter/material.dart';
import 'package:hello_apps/quote.dart';
import 'matkul.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      const snackBar = SnackBar(content: Text('Welcome Back, Alecia!'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });
  }

  Widget build(BuildContext context) {
    var assetsImage = const AssetImage(
        'assets/images/foto.jpg'); //<- Creates an object that fetches an image.
    var image = Image(image: assetsImage, fit: BoxFit.cover);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('Alecia Antara'),
              accountEmail: Text('alecia@email.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/foto.jpg'),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.book),
                title: const Text('Matakuliah'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MatkulPage()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.format_quote),
                title: const Text('Quote'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuotePage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Container(
                child: image,
              ),
            ),
            const Text(
              'Alecia Maharani Ektya Antara',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 2),
            const Text(
              '2009116073',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            ElevatedButton(
              child: const Text('Lihat Matkul'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MatkulPage()),
                );
              },
            ),
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
