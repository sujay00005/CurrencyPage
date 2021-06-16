import 'package:flutter/material.dart';
import 'package:untitled/Button.dart';
import 'package:untitled/component.dart';
import 'table_components.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  String selectedIndicator = 'Technical indicators';
  String selectedExponential = 'Exponential';
  String selectedClassic = 'Classic';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            //Navigator.pop(context);
          },
        ),
        title: Text(
          'USD/INR',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),



      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[

            Container(
              padding: EdgeInsets.all(8),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButton<String>(
                style: TextStyle(color: Colors.white,),
                underline: SizedBox(),
                value: selectedIndicator,
                items: [
                  DropdownMenuItem(
                    child: Text('Technical indicators                             '),
                    value: 'Technical indicators',
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    selectedIndicator = value.toString();
                  });
                },
              ),
            ),


            Text(
              'Summary',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),

            SizedBox(
              height: 30.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Component(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RectangularButton(
                        title: '1 MIN',
                        color: Colors.black87,
                        onPressed: (){}
                    ),
                    RectangularButton(
                        title: '5 MIN',
                        color: Colors.black87,
                        onPressed: (){}
                    ),
                    RectangularButton(
                        title: '15 MIN',
                        color: Colors.black87,
                        onPressed: (){}
                    ),
                    RectangularButton(
                        title: '30 MIN',
                        color: Colors.black87,
                        onPressed: (){}
                    ),
                    RectangularButton(
                        title: '1 HR',
                        color: Colors.black87,
                        onPressed: (){}
                    ),
                    RectangularButton(
                        title: '5 HR',
                        color: Colors.black87,
                        onPressed: (){}
                    ),
                    RectangularButton(
                        title: '1 DAY',
                        color: Colors.black87,
                        onPressed: (){}
                    ),
                    RectangularButton(
                        title: '1 WK',
                        color: Colors.black87,
                        onPressed: (){}
                    ),
                    RectangularButton(
                        title: '1 MON',
                        color: Colors.black87,
                        onPressed: (){}
                    ),
                    ],
                ),
              ],
            ),

            SizedBox(
              height: 30.0,
            ),

            Text(
              'Moving Averages',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),

            SizedBox(
              height: 30.0,
            ),

            RectangularButton(
                  title: 'BUY',
                  color: Colors.lightBlue,
                  onPressed: (){}
              ),

            SizedBox(height: 20.0,),

            HeadComponent(
                firstNumber: '7',
                secondNumber: '-',
                thirdNumber: '5'
            ),

            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.only(top: 8, bottom: 8),
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButton<String>(
                style: TextStyle(color: Colors.white, decorationColor:
                Colors.white),
                underline: SizedBox(),
                value: selectedExponential,
                items: [
                  DropdownMenuItem(
                    child: Text('Exponential'),
                    value: 'Exponential',
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    selectedIndicator = value.toString();
                  });
                },
              ),
            ),

            HeadingRow(
              heading1: 'Period',
              heading2: 'Value',
              heading3: 'Type',
            ),

            TableText(
                color: Color(0xffff2052),
                firstTable: 'MA10',
                secondTable: '465.28',
                thirdTable: 'SELL'
            ),
            TableText(
                color: Color(0xffff2052),
                firstTable: 'MA20',
                secondTable: '465.28',
                thirdTable: 'SELL'
            ),
            TableText(
                color: Colors.blue,
                firstTable: 'MA30',
                secondTable: '465.28',
                thirdTable: 'BUY'
            ),
            TableText(
                color: Colors.blue,
                firstTable: 'MA50',
                secondTable: '465.28',
                thirdTable: 'BUY'
            ),
            TableText(
                color: Color(0xffff2052),
                firstTable: 'MA100',
                secondTable: '465.28',
                thirdTable: 'SELL'
            ),
            TableText(
                color: Colors.blue,
                firstTable: 'MA200',
                secondTable: '465.28',
                thirdTable: 'BUY'
            ),



            SizedBox(
              height: 30.0,
            ),

            Text(
              'Oscillators',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white
              ),
            ),

            SizedBox(
              height: 30.0,
            ),

            RectangularButton(
                title: 'STRONG SELL',
                color: Color(0xffff2052),
                onPressed: (){}
            ),

            HeadComponent(
                firstNumber: '1',
                secondNumber: '1',
                thirdNumber: '9',
            ),

            HeadingRow(
              heading1: 'Name',
              heading2: 'Value',
              heading3: 'Action',
            ),

            TableText(
                color: Colors.orangeAccent,
                firstTable: 'RSI(14)',
                secondTable: '-53.6545',
                thirdTable: 'NEUTRAL'
            ),
            TableText(
                color: Color(0xffff2052),
                firstTable: 'CCI(20)',
                secondTable: '-53.6545',
                thirdTable: 'SELL'
            ),
            TableText(
                color: Colors.blue,
                firstTable: 'ADI(14)',
                secondTable: '-53.6545',
                thirdTable: 'BUY'
            ),
            TableText(
                color: Color(0xffff2052),
                firstTable: 'Awesome Oscillator',
                secondTable: '-53.6545',
                thirdTable: 'SELL'
            ),
            TableText(
                color: Color(0xffff2052),
                firstTable: 'Momentum(10)',
                secondTable: '-53.6545',
                thirdTable: 'SELL'
            ),
            TableText(
                color: Color(0xffff2052),
                firstTable: 'Stochastic RSI Fast(3,3,14,14)',
                secondTable: '-53.6545',
                thirdTable: 'SELL'
            ),
            TableText(
                color: Color(0xffff2052),
                firstTable: 'Williams %R',
                secondTable: '-53.6545',
                thirdTable: 'SELL'
            ),
            TableText(
                color: Color(0xffff2052),
                firstTable: 'Bull Bear Power',
                secondTable: '-53.6545',
                thirdTable: 'SELL'
            ),
            TableText(
                color: Colors.white24,
                firstTable: 'Ultimate Oscillator(7,14,28)',
                secondTable: '-53.6545',
                thirdTable: 'LESS VOLATILE'
            ),

            SizedBox(height: 40.0),

            Text(
              'Pivot Points',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white
              ),
            ),

            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.only(top: 8, bottom: 8),
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButton<String>(
                style: TextStyle(color: Colors.white, decorationColor:
                Colors.white),
                underline: SizedBox(),
                value: selectedClassic,
                items: [
                  DropdownMenuItem(
                    child: Text('Classic'),
                    value: 'Classic',
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    selectedIndicator = value.toString();
                  });
                },
              ),
            ),

            LastTableText(
                firstTable: 'S3',
                secondTable: '456.87'
            ),
            LastTableText(
                firstTable: 'S2',
                secondTable: '456.87'
            ),
            LastTableText(
                firstTable: 'S1',
                secondTable: '456.87'
            ),
            LastTableText(
                firstTable: 'Pivot Points',
                secondTable: '456.87'
            ),
            LastTableText(
                firstTable: 'R1',
                secondTable: '456.87'
            ),
            LastTableText(
                firstTable: 'R2',
                secondTable: '456.87'
            ),
            LastTableText(
                firstTable: 'R3',
                secondTable: '456.87'
            ),

            SizedBox(
              height: 60.0,
            )
          ],
        ),
      ),
    );
  }
}







