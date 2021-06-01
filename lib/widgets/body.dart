import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/util.dart';
import 'package:portfolio_web/widgets/contact_button.dart';

class Body extends StatelessWidget {
  final projectsList = [
    {
      'title': 'Building a Cat',
      'subtitle': 'Great client',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Flutter 2.0 Course',
      'subtitle': 'The best of the best!',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Connekto',
      'subtitle': 'A Flutter app for nerds',
      'image': 'https://picsum.photos/id/1014/400/300'
    },
    {
      'title': 'Been There',
      'subtitle': 'Save places you\'ve visited',
      'image': 'https://picsum.photos/id/3/400/300'
    },
    {
      'title': 'Bengo',
      'subtitle': 'Flutter email app',
      'image': 'https://picsum.photos/id/1025/400/300'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 1,
            child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Expanded(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Opacity(
                              opacity: 0.5,
                              child: Image.asset(
                                'headshot.png',
                              )),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                ' I \'m Paulo. \n A software developer \n and teacher',
                                style: TextStyle(
                                    fontSize: 44.5, color: Colors.blueGrey),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 75, vertical: 60),
                                  child: ContactButton(
                                    buttonText: 'Drop me a line',
                                    icon: Icon(Icons.mail_outline),
                                    onPressed: () {
                                      launchMailto();
                                    },
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ))),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'My Projects',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                    fontSize: 23),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: projectsList.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.work),
                                title: Text(projectsList[index]['title']),
                                subtitle: Text(projectsList[index]['subtitle']),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child:
                                    Image.network(projectsList[index]['image']),
                              ),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        )),
        SizedBox(width: 100)
      ],
    );
  }
}
