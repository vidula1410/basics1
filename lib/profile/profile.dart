import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static const routeName = '/profile';
  final String name;
  final String srn;
  const Profile({Key? key, required this.name, required this.srn})
      : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String phoneNo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Experiment'),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly, //alligns the text at the center
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Pesu lads',
                style: TextStyle(
                    fontSize: 50,
                    // backgroundColor: Colors.blue,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Island'),
              ),
              Image.asset(
                'assets/images/1666689451781.jpg',
                height: 280,
                width: 280,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 20.0, 0.0),
                child: Text(widget.name,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        // backgroundColor: Colors.blue,
                        color: Colors.red,
                        fontFamily: 'Island')),
              ),
              Text(widget.srn,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      // backgroundColor: Colors.blue,
                      color: Colors.red,
                      fontFamily: 'Island')),
              // Text('Phone no:1234567892',
              //     style: TextStyle(
              //         fontSize: 25,
              //         fontWeight: FontWeight.bold,
              //         // backgroundColor: Colors.blue,
              //         color: Colors.black,
              //         fontFamily: 'Island')),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1,
                    vertical: 0.0),
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      phoneNo = val;
                    });
                  },
                  keyboardType: TextInputType.phone,
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  print('Present');
                },
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: Text('present'),
              ),
            ],
          ),
        ),
      ),
    ); // T
  }
}
