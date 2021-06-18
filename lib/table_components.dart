import 'package:flutter/material.dart';

//Heading for first table
class HeadingRowFirst extends StatelessWidget {
  const HeadingRowFirst(
      {required this.heading1, required this.heading2, required this.heading3});

  final String heading1;
  final String heading2;
  final String heading3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: Colors.white10,
      ),
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      height: 35.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading1,
            style: TextStyle(
              fontSize: 13.0,
              color: Color(0xff999999),
            ),
          ),
          Text(
            heading2,
            style: TextStyle(
              fontSize: 13.0,
              color: Color(0xff999999),
            ),
          ),
          Text(
            heading3,
            style: TextStyle(
              fontSize: 13.0,
              color: Color(0xff999999),
            ),
          ),
        ],
      ),
    );
  }
}

//Heading for second table
class HeadingRowSecond extends StatelessWidget {
  const HeadingRowSecond(
      {required this.heading1, required this.heading2, required this.heading3});

  final String heading1;
  final String heading2;
  final String heading3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: Colors.white10,
      ),
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      height: 35.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading1,
            style: TextStyle(
              fontSize: 13.0,
              color: Color(0xff999999),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              heading2,
              style: TextStyle(
                fontSize: 13.0,
                color: Color(0xff999999),
              ),
            ),
          ),
          Text(
            heading3,
            style: TextStyle(
              fontSize: 13.0,
              color: Color(0xff999999),
            ),
          ),
        ],
      ),
    );
  }
}

//Element between button and drop-down list
class HeadComponent extends StatelessWidget {
  const HeadComponent(
      {required this.firstNumber,
      required this.secondNumber,
      required this.thirdNumber});

  final String firstNumber;
  final String secondNumber;
  final String thirdNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$firstNumber',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              Text(
                '$secondNumber',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              Text(
                '$thirdNumber',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Buy',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white70,
                ),
              ),
              Text(
                'Neutral',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Color(0xff999999),
                ),
              ),
              Text(
                'Sell',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Data format for first and second table
class TableText extends StatelessWidget {
  const TableText(
      {required this.color,
      required this.firstTableColor,
      required this.firstTable,
      required this.secondTable,
      required this.thirdTable});

  final Color color;
  final Color firstTableColor;
  final String firstTable;
  final String secondTable;
  final String thirdTable;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5.0, right: 5.0),
      height: 35.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 9,
            child: Text(
              firstTable,
              style: TextStyle(fontSize: 13.0, color: firstTableColor),
            ),
          ),
          //SizedBox(width: 6.0),
          Expanded(
            flex: 5,
            child: Text(
              secondTable,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 13.0, color: Colors.white),
            ),
          ),
          SizedBox(width: 20.0),
          Expanded(
            flex: 5,
            child: Text(
              thirdTable,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 13.0,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Last table data
class LastTableText extends StatelessWidget {
  const LastTableText({
    required this.firstTable,
    required this.secondTable,
  });

  final String firstTable;
  final String secondTable;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      height: 35.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            firstTable,
            style: TextStyle(
              fontSize: 13.0,
              color: Color(0xff999999),
            ),
          ),
          Text(
            secondTable,
            style: TextStyle(
              fontSize: 13.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
