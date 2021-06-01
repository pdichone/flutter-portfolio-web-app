import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/util.dart';
import 'package:portfolio_web/widgets/body.dart';
import 'package:portfolio_web/widgets/button_row.dart';
import 'package:portfolio_web/widgets/contact_button.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 9.0, bottom: 9),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                foregroundImage: NetworkImage(
                    'https://pbs.twimg.com/profile_images/888969496475598852/xi_Vvl_w_400x400.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Paulo',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
              ),
            )
          ],
        ),
        actions: [
          ContactButton(
            buttonText: 'Contact me',
            icon: Icon(
              Icons.send_sharp,
            ),
            onPressed: () {
              launchMailto();
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Body(),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(48.0),
                child: SizedBox(height: 59, child: ButtonRow()),
              )),
        ],
      ),
    );
  }
}
