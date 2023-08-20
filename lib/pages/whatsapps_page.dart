import 'package:flutter/material.dart';
//import 'package:flutter_application_1/pages/telegram_page.dart';

class WhatsApps extends StatefulWidget {
  const WhatsApps({Key? key}) : super(key: key);

  @override
  State<WhatsApps> createState() => _WhatsAppsState();
}

class _WhatsAppsState extends State<WhatsApps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.create), label: "create"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "notifikasi"),
        ],
        selectedItemColor:
            Colors.orange, // Set the selected item color to orange
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'location',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Pekanbaru,Riau',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: const Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 202, 91, 0),
                            onPrimary: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 0),
                          ),
                          child: Text('WhatsApp'),
                        ),
                      ),
                      SizedBox(width: 10), // Add spacing between buttons
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Your code here
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 34, 34, 34),
                            onPrimary: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 0),
                          ),
                          child: Text('Telegram'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 25), // Add spacing
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal:
                          8.0), // Adjust the horizontal padding as needed
                  child: Container(
                    color: Colors.white, // Set white color
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
