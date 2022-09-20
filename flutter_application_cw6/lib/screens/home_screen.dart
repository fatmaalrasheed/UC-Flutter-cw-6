import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_cw6/models/buildings.dart';
import 'package:flutter_application_cw6/screens/building_screen.dart';

class MyScreen extends StatelessWidget {
  MyScreen({super.key});
  var buildings = [
    Building(
        name: 'أبراج الكويت',
        imgUrl:
            'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
        dscrp:
            'The Kuwait Towers are a group of three thin towers in Kuwait City, standing on a promontory into the Persian Gulf. They were the sixth, and last, group in the larger Kuwait Water Towers system of 34 towers (33 store water; one stores equipment), and were built in a style considerably different from the other five groups.'),
    Building(
        name: 'برج التحرير',
        imgUrl:
            'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
        dscrp:
            'The Liberation Tower is a 372-meter-high or 1,220 feet tall telecommunications tower in Kuwait City, Kuwait.[1] It is the second-tallest structure in the country and the 39th tallest building in the world. The tower is not publicly accessible to tourists. '),
    Building(
        name: 'المسجد الكبير',
        imgUrl:
            'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
        dscrp:
            'The Grand Mosque (Arabic: المسجد الكبير) is the largest mosque in Kuwait. Its area spans 45,000 square metres (480,000 sq ft), out of which the building itself covers 20,000 square metres (220,000 sq ft). The main prayer hall is 72 metres (236 ft) wide on all sides, and has teakwood doors. Natural lighting is provided by 144 windows.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Kuwait!'),
        backgroundColor: Color.fromARGB(255, 255, 168, 197),
      ),
      body: ListView.builder(
        itemCount: buildings.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 6,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BuildingScreen(
                        building: buildings[index],
                      ),
                    ));
              },
              child: Row(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(buildings[index].imgUrl),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    child: Text(
                      buildings[index].name,
                      style: TextStyle(fontSize: 25),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
