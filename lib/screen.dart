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
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            //First drop-down list
            Container(
              padding: EdgeInsets.all(8),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButton<String>(
                underline: SizedBox(),
                value: selectedIndicator,
                items: [
                  DropdownMenuItem(
                    child: Text('Technical indicators                  '),
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
            SizedBox(height: 30.0),

            // First heading-   Summary and components
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

            //The color component and time indicating buttons
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
                        textColor: Colors.white,
                        onPressed: () {}),
                    RectangularButton(
                        title: '5 MIN',
                        color: Colors.black87,
                        textColor: Colors.white38,
                        onPressed: () {}),
                    RectangularButton(
                        title: '15 MIN',
                        color: Colors.black87,
                        textColor: Colors.white38,
                        onPressed: () {}),
                    RectangularButton(
                        title: '30 MIN',
                        color: Colors.black87,
                        textColor: Colors.white38,
                        onPressed: () {}),
                    RectangularButton(
                        title: '1 HR',
                        color: Colors.black87,
                        textColor: Colors.white38,
                        onPressed: () {}),
                    RectangularButton(
                        title: '5 HR',
                        color: Colors.black87,
                        textColor: Colors.white38,
                        onPressed: () {}),
                    RectangularButton(
                        title: '1 DAY',
                        color: Colors.black87,
                        textColor: Colors.white38,
                        onPressed: () {}),
                    RectangularButton(
                        title: '1 WK',
                        color: Colors.black87,
                        textColor: Colors.white38,
                        onPressed: () {}),
                    RectangularButton(
                        title: '1 MON',
                        color: Colors.black87,
                        textColor: Colors.white38,
                        onPressed: () {}),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),

            // Second heading-   Moving averages and content
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

            //Buy button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('BUY'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    //side: BorderSide(width: 1.0, color: Colors.white38),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4), // <-- Radius
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            HeadComponent(
                firstNumber: '7', secondNumber: '-', thirdNumber: '5'),
            SizedBox(height: 20.0),

            //Second drop-down list
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(10)),
                  child: DropdownButton<String>(
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
                        selectedExponential = value.toString();
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),

            //First table data
            HeadingRowFirst(
              heading1: 'Period',
              heading2: 'Value',
              heading3: 'Type',
            ),
            SizedBox(height: 20.0),
            TableText(
                color: Color(0xffff2052),
                firstTableColor: Colors.white,
                firstTable: 'MA10',
                secondTable: '465.28',
                thirdTable: 'SELL'),
            TableText(
                color: Color(0xffff2052),
                firstTableColor: Colors.white,
                firstTable: 'MA20',
                secondTable: '465.28',
                thirdTable: 'SELL'),
            TableText(
                color: Colors.blue,
                firstTableColor: Colors.white,
                firstTable: 'MA30',
                secondTable: '465.28',
                thirdTable: 'BUY'),
            TableText(
                color: Colors.blue,
                firstTableColor: Colors.white,
                firstTable: 'MA50',
                secondTable: '465.28',
                thirdTable: 'BUY'),
            TableText(
                color: Color(0xffff2052),
                firstTableColor: Colors.white,
                firstTable: 'MA100',
                secondTable: '465.28',
                thirdTable: 'SELL'),
            TableText(
                color: Colors.blue,
                firstTableColor: Colors.white,
                firstTable: 'MA200',
                secondTable: '465.28',
                thirdTable: 'BUY'),
            SizedBox(
              height: 30.0,
            ),

            //Second heading-     Oscillators and content
            Text(
              'Oscillators',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
            SizedBox(
              height: 30.0,
            ),

            //Strong cell button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('STRONG CELL'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffff2052),
                    //side: BorderSide(width: 1.0, color: Colors.white38),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4), // <-- Radius
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            HeadComponent(
              firstNumber: '1',
              secondNumber: '1',
              thirdNumber: '9',
            ),
            SizedBox(height: 20.0),

            //Second table data
            HeadingRowSecond(
              heading1: 'Name',
              heading2: 'Value',
              heading3: 'Action',
            ),

            SizedBox(height: 20.0),

            TableText(
                color: Colors.orangeAccent,
                firstTableColor: Color(0xff999999),
                firstTable: 'RSI(14)',
                secondTable: '-53.6545',
                thirdTable: 'NEUTRAL'),
            TableText(
                color: Color(0xffff2052),
                firstTableColor: Color(0xff999999),
                firstTable: 'CCI(20)',
                secondTable: '-53.6545',
                thirdTable: 'SELL'),
            TableText(
                color: Colors.blue,
                firstTableColor: Color(0xff999999),
                firstTable: 'ADI(14)',
                secondTable: '-53.6545',
                thirdTable: 'BUY'),
            TableText(
                color: Color(0xffff2052),
                firstTableColor: Color(0xff999999),
                firstTable: 'Awesome Oscillator',
                secondTable: '-53.6545',
                thirdTable: 'SELL'),
            SizedBox(height: 9.0),
            TableText(
                color: Color(0xffff2052),
                firstTableColor: Color(0xff999999),
                firstTable: 'Momentum (10)',
                secondTable: '-53.6545',
                thirdTable: 'SELL'),
            SizedBox(height: 9.0),
            TableText(
                color: Color(0xffff2052),
                firstTableColor: Color(0xff999999),
                firstTable: 'Stochastic RSI Fast (3, 3, 14, 14)',
                secondTable: '-53.6545',
                thirdTable: 'SELL'),
            SizedBox(height: 12.0),
            TableText(
                color: Color(0xffff2052),
                firstTableColor: Color(0xff999999),
                firstTable: 'Williams %R (14)',
                secondTable: '-53.6545',
                thirdTable: 'SELL'),
            SizedBox(height: 9.0),
            TableText(
                color: Color(0xffff2052),
                firstTableColor: Color(0xff999999),
                firstTable: 'Bull Bear Power',
                secondTable: '-53.6545',
                thirdTable: 'SELL'),
            SizedBox(height: 9.0),
            TableText(
                color: Colors.white38,
                firstTableColor: Color(0xff999999),
                firstTable: 'Ultimate Oscillator (7, 14, 28)',
                secondTable: '-53.6545',
                thirdTable: 'LESS VOLATILE'),
            SizedBox(height: 40.0),

            //Last heading-   Pivot points
            Text(
              'Pivot Points',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
            SizedBox(
              height: 30.0,
            ),

            //Last drop-down list
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(10)),
                  child: DropdownButton<String>(
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
                        selectedClassic = value.toString();
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),

            //Last table data
            LastTableText(firstTable: 'S3', secondTable: '456.87'),
            LastTableText(firstTable: 'S2', secondTable: '456.87'),
            LastTableText(firstTable: 'S1', secondTable: '456.87'),
            LastTableText(firstTable: 'Pivot Points', secondTable: '456.87'),
            LastTableText(firstTable: 'R1', secondTable: '456.87'),
            LastTableText(firstTable: 'R2', secondTable: '456.87'),
            LastTableText(firstTable: 'R3', secondTable: '456.87'),
            SizedBox(height: 60.0),
          ],
        ),
      ),
    );
  }
}
