import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  int index = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
              title: 'Weclome to WhatsApp',
              body: 'Best App for community talking',
              image: Image(
                image: AssetImage('assets/Whatsapp.png'),
              )),
          PageViewModel(
              title: 'Weclome to WhatsApp',
              body: 'you can chat here with your frined',
              image: Image(
                image: AssetImage('assets/Whatsapp.png'),
              )),
          PageViewModel(
              title: 'Weclome to WhatsApp',
              body: 'and you can make vdieo call with them too',
              image: Image(
                image: AssetImage('assets/Whatsapp.png'),
              ),
              footer: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xff075E55)),
                onPressed: () {},
                child: Text('Thank you for using our App'),
              )),
        ],
        done: ElevatedButton(
          onPressed: () {  },
          style: ElevatedButton.styleFrom(primary: Color(0xff075E55)),
          child: Text('done',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        ),
        showBackButton: false,
        showNextButton: false,
        animationDuration: 1,
        onDone: () {},
        showSkipButton: true,
        skip: ElevatedButton(
          onPressed: () {  },
          style: ElevatedButton.styleFrom(primary: Color(0xff075E55)),
          child: Text('skip',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
