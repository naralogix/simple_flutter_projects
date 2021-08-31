import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'password_generator_service.dart';
import 'password_length_slider.dart';

class PasswordGeneratorPage extends StatefulWidget {
  const PasswordGeneratorPage({Key? key}) : super(key: key);

  static const String title = 'Password Generator';

  @override
  _PasswordGeneratorPageState createState() => _PasswordGeneratorPageState();
}

class _PasswordGeneratorPageState extends State<PasswordGeneratorPage> {
  final TextEditingController _textEditingController = TextEditingController();
  bool _includeSymbols = true;
  bool _includeNumbers = true;
  int _passwordLength = 8;
  String _password = '';

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Password Generator')),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Card(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // Slider of password length (4-32)
                  PasswordLengthSlider(
                    initialLength: _passwordLength,
                    onSliderChanged: (int val) {
                      _passwordLength = val;
                    },
                  ),
                  // Check box of include letters
                  SwitchListTile(
                    title: const Text('Include Symbols'),
                    subtitle: const Text('e.g. !#\$%&()*+'),
                    value: _includeSymbols,
                    onChanged: (bool? val) {
                      if (val != null) {
                        setState(() {
                          _includeSymbols = val;
                        });
                      }
                    },
                  ),
                  SwitchListTile(
                    title: const Text('Include Numbers'),
                    subtitle: const Text('e.g. 123456'),
                    value: _includeNumbers,
                    onChanged: (bool? val) {
                      if (val != null) {
                        setState(() {
                          _includeNumbers = val;
                        });
                      }
                    },
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _textEditingController.text =
                            PasswordGenerator.generate(
                                length: _passwordLength,
                                symbols: _includeSymbols,
                                numbers: _includeNumbers);
                      });
                    },
                    child: const Text('Generate Password'),
                  ),
                  const SizedBox(height: 48.0),
                  TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                          icon: const Icon(Icons.copy),
                          onPressed: () {
                            _password = _textEditingController.text;
                            Clipboard.setData(ClipboardData(text: _password))
                                .then(
                              (_) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content:
                                        Text('Password copied to clipboard'),
                                    duration: Duration(
                                      seconds: 1,
                                    ),
                                  ),
                                );
                              },
                            );
                          }),
                    ),
                  ),
                  // Text Field and Copy Button
                ]),
          ),
        ),
      ),
    );
  }
}
