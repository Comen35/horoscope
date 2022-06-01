import 'package:flutter/material.dart';
import 'package:horoscope_guide/horoscope_detail.dart';
import 'package:horoscope_guide/model/horoscopeModel.dart';

class HoroscopeItem extends StatelessWidget {
  final HoroscopeModel horoscope;
  const HoroscopeItem({Key? key, required this.horoscope}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HoroscopeDetail(horoscope: horoscope),
                ),
              );
            },
            leading: Image.asset(
              "images/${horoscope.horoscopeSmallImage}",
            ),
            title: Text(
              horoscope.horoscopeName,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              horoscope.horoscopeDate,
              style: myTextStyle.subtitle1,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.lightBlue,
            ),
          ),
        ),
      ),
    );
  }
}
