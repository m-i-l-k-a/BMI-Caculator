import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const ActiveCardColor = Color(0xFF1D1E33);
const InactiveCardColor = Color(0XFF111328);
const BottomContainerColor = Color(0XFFEB1555);

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor =InactiveCardColor;
  Color femaleCardColor =InactiveCardColor;

  void updateColor(int gender){
    if(gender==1);
    if(maleCardColor== InactiveCardColor){
      maleCardColor= ActiveCardColor;
    }else{
      maleCardColor=InactiveCardColor;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState((){
                          updateColor(1);
                        });
                      },
                      child: ReusableCard(
                        color: maleCardColor ,
                        cardChild: IconContent(icon: FontAwesomeIcons.mars,label: 'MALE',),
                      ),
                    )
                ),
                Expanded(
                  child: ReusableCard(
                    color: femaleCardColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.venus,label: 'FEMALE',),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(
              color: InactiveCardColor, cardChild: null,
            ),
          ),
          Expanded(
            child: Row(
              children:  const [
                Expanded(
                  child: ReusableCard(
                    color:InactiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: InactiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: BottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}



