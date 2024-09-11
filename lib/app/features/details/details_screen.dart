import 'package:flutter/material.dart';
//import 'package:flutter_application_1/app/app.dart';
import 'package:flutter_svg/flutter_svg.dart';

var str = 'Москва';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Подробности'),
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: SvgPicture.network(
              width: 100,
              height: 100,
              'http://commons.wikimedia.org/wiki/Special:FilePath/Flag%20of%20Russia.svg',
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Россия',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text('Столица: $str',
              style: Theme.of(context).textTheme.displayMedium),
          Text(
            '+7',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Text(
            '79',
            style: Theme.of(context).textTheme.displaySmall,
          )
        ],
      ),
    );
  }
}
