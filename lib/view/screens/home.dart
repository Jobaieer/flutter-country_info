import 'package:country_info/data/country_data.dart';
import 'package:country_info/view/widgets/countrycard.dart';
import 'package:flutter/material.dart';
import 'detail.dart';

class Home extends StatelessWidget {
  final String email;

  const Home({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Country Info',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
        ),
        titleSpacing: 0,
        centerTitle: true,
      ),

      body: ListView.builder(
        //scroll kora jai emon list
        itemCount: countries.length, // koy ta desh aca
        itemBuilder: (BuildContext context, int index) {
          return CountryCard(
            country: countries[index], //desh enter kora hocca
            onTap: () {
              //click korla screen aa show korba
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Detail(country: countries[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}