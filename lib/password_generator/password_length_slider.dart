import 'package:flutter/material.dart';

class PasswordLengthSlider extends StatefulWidget {
  const PasswordLengthSlider(
      {Key? key, this.initialLength = 8, this.onSliderChanged})
      : super(key: key);
  final ValueChanged<int>? onSliderChanged;
  final int initialLength;

  @override
  _PasswordLengthSliderState createState() => _PasswordLengthSliderState();
}

class _PasswordLengthSliderState extends State<PasswordLengthSlider> {
  late double _passwordLength;

  @override
  void initState() {
    _passwordLength = widget.initialLength.toDouble();
    super.initState();
  }

  String get _passwordLengthStr => _passwordLength.round().toString();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text('Password Length: $_passwordLengthStr',
                style: Theme.of(context).textTheme.subtitle1),
          ),
          Expanded(
            child: Slider(
              value: _passwordLength,
              onChanged: (double val) {
                if (widget.onSliderChanged != null) {
                  widget.onSliderChanged!(val.round());
                }
                setState(() {
                  _passwordLength = val;
                });
              },
              min: 4,
              max: 32,
              label: _passwordLength.round().toString(),
            ),
          )
        ],
      ),
    );
  }
}
