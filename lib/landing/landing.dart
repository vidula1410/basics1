import 'package:flutter/material.dart';
import 'package:basics1/profile/profile.dart';

class Landing extends StatefulWidget {
  static const routeName = '/';
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.05,
              horizontal: MediaQuery.of(context).size.width * 0.1),
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Image.asset('assets/image/pesuio.jpeg'),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(name: 'Test', srn: 'PES2UG19CSXYZ')));
                  },
                  child: ListTile(
                      title: Text('Shruthi'), subtitle: Text('PES2UG21CSXYF'))),
              ListTile(
                title: Text('Shruthi'),
                subtitle: Text('PES2UG21CSXYF'),
              ),
              ListTile(
                title: Text('Shruthi'),
                subtitle: Text('PES2UG21CSXYF'),
              ),
              ListTile(title: Text('Shruthi'), subtitle: Text('PES2UG21CSXYF'))
            ],
          ),
        ),
      ),
    );
  }
}
