import 'package:flutter/material.dart';

class HeadingRow extends StatelessWidget {
  const HeadingRow(
      {required this.heading1, required this.heading2, required this.heading3});

  final String heading1;
  final String heading2;
  final String heading3;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      height: 35.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading1,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          Text(
            heading2,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          Text(
            heading3,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

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
                  color: Colors.white,
                ),
              ),
              Text(
                'Neutral',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'Sell',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TableText extends StatelessWidget {
  const TableText(
      {required this.color,
      required this.firstTable,
      required this.secondTable,
      required this.thirdTable});

  final Color color;
  final String firstTable;
  final String secondTable;
  final String thirdTable;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      height: 35.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              firstTable,
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
          SizedBox(width: 18.0),

          Expanded(
            child: Text(
              secondTable,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),

          SizedBox(width: 20.0),

          Expanded(
            child: Text(
              thirdTable,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 16.0,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          Text(
            secondTable,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
