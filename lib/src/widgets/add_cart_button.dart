import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom_widgets.dart';

class AddCartButton extends StatelessWidget {
  final double amount;

  AddCartButton({this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.10),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Text(
              "\$$amount",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            OrangeButton(
              text: "Add to cart",
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
