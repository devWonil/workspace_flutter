import 'package:flutter/material.dart';
import 'package:flutter_airbnb_ex1/size.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Align(
        alignment: Alignment(-0.6, 0),
        child: Container(
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(gap_l),
              child: Column(
                children: [
                  _buildFormTitle(),
                  _buildFormField(),
                  _buildFormSubmit(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return SizedBox();
  }

  Widget _buildFormField() {
    return SizedBox();
  }

  Widget _buildFormSubmit() {
    return SizedBox();
  }
}
