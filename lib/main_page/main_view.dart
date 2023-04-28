import 'package:flutter/material.dart';
import 'package:woordle_solver/custom_widgets/round_button.dart';

class MainView extends StatefulWidget{
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView>{
  @override
  Widget build(BuildContext context){

    final double screenHeight = MediaQuery.of(context).size.height * 0.95;
    final double screenWidth = MediaQuery.of(context).size.width * 0.9;

    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SizedBox(
            height: screenHeight,
            width: screenWidth,
            child: Column(
              children: [
                const Text("This is the main screen!!"),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RoundButtons(
                      btnName: "Start",
                      onPressed: (){},
                      fontSize: 16,
                      sizeWidth: screenWidth
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}