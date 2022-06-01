import 'package:flutter/material.dart';
import 'package:horoscope_guide/model/horoscopeModel.dart';
import 'package:palette_generator/palette_generator.dart';

class HoroscopeDetail extends StatefulWidget {
  final HoroscopeModel horoscope;
  const HoroscopeDetail({Key? key, required this.horoscope}) : super(key: key);

  @override
  State<HoroscopeDetail> createState() => _HoroscopeDetailState();
}

class _HoroscopeDetailState extends State<HoroscopeDetail> {
  Color appbarColor = Colors.transparent;
  late PaletteGenerator _generator;
  @override
  void initState() {
    super.initState();
    findAppbarColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              pinned: true,
              backgroundColor: appbarColor,
              flexibleSpace: FlexibleSpaceBar(
                title: Container(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    widget.horoscope.horoscopeName + " Horoscope and Features",
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                background: Image.asset(
                  'images/${widget.horoscope.horoscopeBigImage}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.all(16),
                padding: EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Text(
                    widget.horoscope.horoscopeDetail,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void findAppbarColor() async {
    _generator = await PaletteGenerator.fromImageProvider(
      AssetImage('images/${widget.horoscope.horoscopeBigImage}'),
    );
    appbarColor = _generator.dominantColor!.color;
    setState(() {
      
    });
  }
}
