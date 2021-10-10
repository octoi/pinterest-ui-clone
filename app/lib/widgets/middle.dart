import 'package:app/utils/constants.dart';
import 'package:app/utils/get_random_number.dart';
import 'package:flutter/material.dart';

class Middle extends StatelessWidget {
  const Middle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Ideas from creators',
          style: TextStyle(
            color: Colors.white,
            fontSize: 23.0,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: const [
              CreatorCard(),
              CreatorCard(),
              CreatorCard(),
              CreatorCard(),
              CreatorCard(),
              CreatorCard(),
              CreatorCard(),
            ],
          ),
        )
      ],
    );
  }
}

class CreatorCard extends StatelessWidget {
  const CreatorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: Stack(
        children: [
          Container(
            width: 160.0,
            height: 250.0,
            margin: const EdgeInsets.only(
              top: 20.0,
              left: 10.0,
            ),
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(rickImage),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 8.0,
                  left: 8.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.visibility,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 2.0),
                        Text(
                          '${getRandomNumber()}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 5,
            width: 180.0,
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(rickImage),
            ),
          )
        ],
      ),
    );
  }
}
