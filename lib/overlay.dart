import 'package:flutter/material.dart';
import 'package:flutter_application_1/loader.dart';

class OverlayView extends StatelessWidget {
  const OverlayView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: Loader.appLoader.loaderShowingNotifier,
      builder: (context, value, child) {
        if (value) {
          return Container(
            color: Colors.black.withOpacity(0.5),
            child: Center(
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
                                  ValueListenableBuilder<String>(
                                    builder: (context, value, child) {
                                      return Text(value);
                                    },
                                    valueListenable:
                                        Loader.appLoader.loaderTextNotifier,
                                  ),
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
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
