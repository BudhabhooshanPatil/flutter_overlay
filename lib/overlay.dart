import 'package:flutter/material.dart';

class OverlayView extends StatelessWidget {
  const OverlayView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.error_rounded,
                        color: Colors.red,
                        size: 80,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          Text('Error title'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'this is error message asdadajd asdbka bnabdbabda ajnsdn asd asdabdjad adjandakda dabsdja asdbajdba asja  ',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}