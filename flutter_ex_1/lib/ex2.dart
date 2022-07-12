import 'package:flutter/material.dart';

class BasicText extends StatelessWidget {
  const BasicText({
    Key? key,
    required String name,
  })  : _name = name,
        super(key: key);

  final String _name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Text(
            'Hello, $_name! How are you?dsfadsagfsdagfdagfdagsdfgdsfsdafsdgfdsahfdhdaghrsdfa',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const Text.rich(
          TextSpan(text: 'Hello' // default text style

              ),
        ),
      ],
    );
  }
}
