import 'package:flutter/material.dart';

class OverlayView extends StatefulWidget {
  final String popupTitle;
  final String popupMessage;
  final Icon popupImage;
  final Function ontap;
  const OverlayView(
      {Key key,
      this.popupTitle,
      this.popupMessage,
      this.popupImage,
      this.ontap})
      : super(key: key);

  @override
  _OverlayViewState createState() => _OverlayViewState();
}

class _OverlayViewState extends State<OverlayView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.50),
      body: Container(
        child: InkWell(
          onTap: this.widget.ontap,
        ),
      ),
    );
  }
}
