import 'package:currency_converter/service/inherited_properties.dart';
import 'package:flutter/material.dart';

class DigitButton extends StatelessWidget {
  const DigitButton({
    required String text,
    required Widget child,
    required VoidCallback onPressed,
    Key? key,
  })  : this._text = text,
        this._child = child,
        this._onPressed = onPressed,
        super(key: key);

  final String _text;
  final Widget _child;
  final VoidCallback _onPressed;

  @override
  Widget build(BuildContext context) {
    Color color = InheritedProperties.of(context).accentColor;

    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: Theme.of(context).colorScheme.secondary,width: 2)
        ),
        child: FloatingActionButton(
          backgroundColor: color,
          heroTag: _text,
          child: _child,
          onPressed: _onPressed,
        ),
      ),
    );
  }
}
