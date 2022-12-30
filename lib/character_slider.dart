import 'package:api_marvel_pratica_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CharacterSlider extends StatefulWidget {
  const CharacterSlider({super.key});

  @override
  State<CharacterSlider> createState() => _CharacterSliderState();
}

class _CharacterSliderState extends State<CharacterSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        viewportFraction: 0.6,
        height: 340,
        enlargeCenterPage: true,
      ),
      itemCount: characterList.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          CharacterCard(),
    );
  }
}

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key, this.index});

  final index;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(40),
          ),
          color: Colors.black,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 5,
              child: Image.asset(
                'assets/images/iron.png',
              ),
            ),
            Container(
              height: 5,
              color: Colors.red,
              width: MediaQuery.of(context).size.width / 2 - 40,
            ),
            Flexible(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IRON MAN',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Tony Stark',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
