import 'package:flutter/material.dart';

class PinCodeTextFieldCustom extends StatefulWidget {
  const PinCodeTextFieldCustom({super.key});

  @override
  _PinCodeTextFieldCustomState createState() => _PinCodeTextFieldCustomState();
}

class _PinCodeTextFieldCustomState extends State<PinCodeTextFieldCustom> {
  List<TextEditingController> controllers =
      List.generate(4, (index) => TextEditingController());
  FocusNode currentFocusNode = FocusNode();

  @override
  void dispose() {
    controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.isNotEmpty && index < controllers.length - 1) {
      FocusScope.of(context).requestFocus(FocusNode());
      FocusScope.of(context).requestFocus(FocusNode());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          width: 50,
          child: TextField(
            controller: controllers[index],
            focusNode: currentFocusNode,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              counterText: '',
              border: OutlineInputBorder(),
            ),
            onChanged: (value) => _onChanged(value, index),
          ),
        );
      }),
    );
  }
}
