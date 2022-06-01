import 'package:flutter/material.dart';
import 'package:horoscope_guide/horoscope_item.dart';
import 'package:horoscope_guide/model/horoscopeModel.dart';
import './data/strings.dart';

class HoroscopeList extends StatelessWidget {
  late List<HoroscopeModel> horoscope;

  HoroscopeList({Key? key}) : super(key: key) {
    horoscope = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Horoscope List'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: horoscope.length,
          itemBuilder: (context, index) {
            return HoroscopeItem(horoscope: horoscope[index]);
          },
        ),
      ),
    );
  }

  getData() {
    List<HoroscopeModel> temporary = [];
    for (var i = 0; i < 12; i++) {
      var horoscopeName = Strings.HOROSCOPE_NAMES[i];
      var horoscopeDate = Strings.HOROSCOPE_DATES[i];
      var horoscopeDetail = Strings.HOROSCOPE_FEATURES[i];
      var horoscopeSmallImage = horoscopeName.toLowerCase() + '${i + 1}.png';
      var horoscopeBigImage =
          horoscopeName.toLowerCase() + '_buyuk${i + 1}.png';

      HoroscopeModel addingHoroscope = HoroscopeModel(
        horoscopeName,
        horoscopeDate,
        horoscopeDetail,
        horoscopeSmallImage,
        horoscopeBigImage,
      );
      temporary.add(addingHoroscope);
    }
    return temporary;
  }
}
