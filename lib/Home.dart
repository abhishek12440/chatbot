import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {TextEditingController sentcont = TextEditingController();
bool loading = false;
String Response = "";
  @override sendmessage()async{if(sentcont.text.trim().isEmpty){return null}}
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mallubot.AI", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,),backgroundColor: const Color.fromARGB(255, 66, 83, 97),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 640),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send_outlined, color: Colors.white),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
