import 'package:flutter/material.dart';

class RoundIconButton extends StatefulWidget {
  final IconData icon;
  final Function onPressed;
  final Function onLongPressed;
  RoundIconButton({@required this.icon, this.onPressed, this.onLongPressed});
  _RoundIconButton createState() =>
      _RoundIconButton(this.icon, this.onPressed, this.onLongPressed);
}

class _RoundIconButton extends State<RoundIconButton> {
  final IconData icon;
  final Function onPressed;
  final Function onLongPressed;
  _RoundIconButton(this.icon, this.onPressed, this.onLongPressed);

  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      child: GestureDetector(
        child: ElevatedButton(
          child: Icon(icon),
          onPressed: onPressed,
          style: ButtonStyle(
            elevation: MaterialStateProperty.resolveWith<double>(
              (Set<MaterialState> states) {
                return 6.0;
              },
            ),
            overlayColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              return Colors.transparent;
            }),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                return Colors.grey;
              },
            ),
            shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
              (Set<MaterialState> states) {
                return CircleBorder();
              },
            ),
          ),
        ),
        onLongPressStart: (_) async {
          isPressed = true;
          do {
            if (onLongPressed != null) onLongPressed();
            await Future.delayed(Duration(milliseconds: 50));
          } while (isPressed);
        },
        onLongPressEnd: (_) => setState(() => isPressed = false),
      ),
    );
  }
}
