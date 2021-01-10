import 'package:flutter/material.dart';

class TextAreaWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClickedCopy;
  final VoidCallback onClickedSpeech;

  const TextAreaWidget({
    @required this.text,
    @required this.onClickedCopy,
    @required this.onClickedSpeech,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: Container(
              height: 100,
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              child: SelectableText(
                text.isEmpty ? 'Scan an Image to get text' : text,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.copy, color: Colors.black),
                color: Colors.grey[200],
                onPressed: onClickedCopy,
              ),
              const SizedBox(height: 12),
              IconButton(
                icon: Icon(Icons.volume_up_rounded, color: Colors.black),
                color: Colors.grey[200],
                onPressed: onClickedSpeech,
              ),
            ],
          ),
        ],
      );
}
