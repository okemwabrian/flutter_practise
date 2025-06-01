import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Learning Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(onPressed: (){
            debugPrint('Actions');

          },
              icon:const Icon(Icons.info_outline,))
        ],
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/maserati.jpg'),
              const SizedBox(height: 20),
              const Divider(color: Colors.red),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                color: Colors.red,
                child: const Text(
                  "This is a text Widget",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.green : Colors.blue,
                ),
                onPressed: () {
                  debugPrint('Elevated button');
                },
                child: const Text("Elevated Button"),
              ),
              OutlinedButton(
                onPressed: () {
                  debugPrint('Outlined button');
                },
                child: const Text("Outlined Button"),
              ),
              TextButton(
                onPressed: () {
                  debugPrint('TextButton');
                },
                child: const Text("Text Button"),
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  debugPrint('This is a row');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.local_fire_department, color: Colors.blue),
                    Text('Row Widget'),
                    Icon(Icons.local_fire_department, color: Colors.red),
                  ],
                ),
              ),
              Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                },
              ),
              Checkbox(value: isCheckbox, onChanged: (bool? newBool){
                setState(() {
                  isCheckbox = newBool;
                });
              }),
              Image.network('https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&height=900&width=1600&fit=bounds')
            ],
          ),
        ),
      ),
    );
  }
}
