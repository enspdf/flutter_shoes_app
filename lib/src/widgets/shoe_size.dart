import 'package:flutter/material.dart';

class ShoeSizePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
          color: Color(0xFFFFCF53),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: <Widget>[
            _ShoeShadow(),
            _ShowSizes(),
          ],
        ),
      ),
    );
  }
}

class _ShowSizes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _SizeShoeBox(7),
          _SizeShoeBox(7.5),
          _SizeShoeBox(8),
          _SizeShoeBox(8.5),
          _SizeShoeBox(9),
          _SizeShoeBox(9.5),
        ],
      ),
    );
  }
}

class _SizeShoeBox extends StatelessWidget {
  final double number;
  const _SizeShoeBox(this.number);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "${number.toString().replaceAll('.0', '')}",
        style: TextStyle(
          color: (this.number == 9) ? Colors.white : Color(0xFFF1A23A),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: (this.number == 9) ? Color(0xFFF1A23A) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          if (this.number == 9)
            BoxShadow(
              color: Color(0xFFF1A23A),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
        ],
      ),
    );
  }
}

class _ShoeShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 20,
            right: 0,
            child: _Shadow(),
          ),
          Image(
            image: AssetImage("assets/imgs/azul.png"),
          ),
        ],
      ),
    );
  }
}

class _Shadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(color: Color(0xFFEAA14E), blurRadius: 40),
          ],
        ),
      ),
    );
  }
}
