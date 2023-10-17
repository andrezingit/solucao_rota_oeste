import 'package:flutter/material.dart';

class CorpoTela extends StatelessWidget {

  final String titulo;

  final Widget filho;

  const CorpoTela(this.titulo, {Key? key, required this.filho}) : super(key: key);

  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 37),
        child: Container(
          width: 270,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 270,
                height: 58,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, top: 17),
                  child: Text(
                    this.titulo,
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              this.filho,
            ],
          ),
        ),
      ),
    );
  }
}
