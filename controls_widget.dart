import 'package:flutter/material.dart';

class ControlsWidget extends StatelessWidget {
  final VoidCallback onClickedPickGalleryImg;
  final VoidCallback onClickedPickCameraImg;
  final VoidCallback onClickedScanText;
  final VoidCallback onClickedClear;

  const ControlsWidget({
    @required this.onClickedPickGalleryImg,
    @required this.onClickedPickCameraImg,
    @required this.onClickedScanText,
    @required this.onClickedClear,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: onClickedPickGalleryImg,
            child: Text('Gallery'),
            color: Colors.blue[500],
          ),
          const SizedBox(width: 7),
          RaisedButton(
            onPressed: onClickedPickCameraImg,
            child: Text('Camera'),
            color: Colors.yellow[500],
          ),
          const SizedBox(width: 7),
          RaisedButton(
            onPressed: onClickedScanText,
            child: Text('Scan'),
            color: Colors.green[500],
          ),
          const SizedBox(width: 7),
          RaisedButton(
            onPressed: onClickedClear,
            child: Text('Clear'),
            color: Colors.red[500],
          )
        ],
      );
}
