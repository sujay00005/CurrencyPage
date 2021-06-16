import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Component extends StatelessWidget {
  const Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: 115.0,
      color: Colors.black45,
      child: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 12.0, start: 0.0),
            Pin(start: 0.0, end: 0.0),
            child:
// Adobe XD layer: 'Indication Bar' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 2.0, end: 2.0),
                  Pin(size: 60.0, end: 0.0),
                  child:
// Adobe XD layer: 'Strong Sell' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                      ),
                      color: const Color(0xffff2e50),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 2.0, end: 2.0),
                  Pin(size: 60.0, middle: 0.75),
                  child:
// Adobe XD layer: 'Sell' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: const Color(0x99ff2e50),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 60.0, middle: 0.5),
                  child:
// Adobe XD layer: 'Neutral' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.0),
                      color: const Color(0xffffb946),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x14121212),
                          offset: Offset(0, 4),
                          blurRadius: 16,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 2.0, end: 2.0),
                  Pin(size: 60.0, middle: 0.25),
                  child:
// Adobe XD layer: 'Buy' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: const Color(0x99007aff),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 2.0, end: 2.0),
                  Pin(size: 60.0, start: 0.0),
                  child:
// Adobe XD layer: 'Strong Buy' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: const Color(0xff007aff),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, end: 0.0),
            Pin(size: 28.0, middle: 0.5),
            child:
// Adobe XD layer: 'Indication' (shape)
                SvgPicture.string(
              '<svg viewBox="65.0 329.0 93.0 28.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="4" stdDeviation="24"/></filter></defs><path transform="translate(-8506.0, 5491.0)" d="M 8580 -5134 C 8577.791015625 -5134 8575.9990234375 -5135.79150390625 8575.9990234375 -5138.0009765625 L 8575.9990234375 -5144.5 L 8571.48046875 -5147.13525390625 C 8570.8193359375 -5147.5224609375 8570.8193359375 -5148.47705078125 8571.48046875 -5148.86376953125 L 8575.9990234375 -5151.4990234375 L 8575.9990234375 -5158.00048828125 C 8575.9990234375 -5160.2099609375 8577.791015625 -5161.99951171875 8580 -5161.99951171875 L 8660 -5161.99951171875 C 8662.208984375 -5161.99951171875 8664 -5160.2099609375 8664 -5158.00048828125 L 8664 -5138.0009765625 C 8664 -5135.79150390625 8662.208984375 -5134 8660 -5134 L 8580 -5134 Z" fill="#ffb946" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>',
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 62.0, end: 13.0),
            Pin(size: 18.0, middle: 0.5),
            child: Text(
              'NEUTRAL',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 14,
                color: const Color(0xff121212),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
