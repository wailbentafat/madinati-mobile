import 'package:flutter/material.dart';
import '../const/text.dart'; 

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = -1; 

  final List<Map<String, dynamic>> places = [
    {
      "title": "Hotel",
      "icon": Icons.hotel,
    },
    {
      "title": "Homestay",
      "icon": Icons.home,
    },
    {
      "title": "Apartment", 
      "icon": Icons.apartment, 
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "Current location",
                      style: TextStyle(
                        color: Color.fromARGB(255, 127, 124, 124),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(
                          Icons.language,
                          size: 30,
                          color: Color(0xFF358CC1),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          text.localisation,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 130),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.notifications_active_outlined,
                      size: 20,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: List.generate(places.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index; 
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: selectedIndex == index
                          ? Color(0xFF358CC1) 
                          : Colors.white, 
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          places[index]["icon"], 
                          size: 30,
                          color: selectedIndex == index
                              ? Colors.white 
                              : Color(0xFF358CC1), 
                        ),
                        SizedBox(width: 5),
                        Text(
                          places[index]["title"], 
                          style: TextStyle(
                            color: selectedIndex == index
                                ? Colors.white 
                                : Colors.black, 
                            fontSize: 12, 
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          SizedBox(height: 20,),
          Padding(padding:
           EdgeInsets.only(top: 5),
           child: Row(
            children: [
              SizedBox(width: 10,),
              Text("Near Location",
              style: TextStyle(),),
              const SizedBox(width: 180,),
              GestureDetector(child: Text("see all",style: TextStyle(color: Colors.blueAccent)))
            ],
           )


          
          ),
          SizedBox(height: 10,),
          ListView.builder(
            itemCount: 1,
            itemBuilder: (
              =BuildContext context, int index) {
              return ;
            },
          ),

        ],
      ),
    );
  }
}
