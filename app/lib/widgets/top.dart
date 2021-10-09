import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  const Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Daily Inspiration',
            style: TextStyle(
              color: Colors.white,
              fontSize: 23.0,
            ),
          ),
          Container(
            height: 250.0,
            width: double.infinity,
            margin:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(rickImage),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                const Positioned(
                  bottom: 100.0,
                  child: Text(
                    'Ideas to celebrate the festive season',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20.0,
                  width: MediaQuery.of(context).size.width - 100.0,
                  child: const Text(
                    'Pass on the light this Rick Roll',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
