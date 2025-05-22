import 'package:country_info/models/country_model.dart';
import 'package:flutter/material.dart';

class CountryCard extends StatelessWidget {
  final Country country;

  final VoidCallback onTap;

  const CountryCard({super.key, required this.country, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(country.flag, fit: BoxFit.cover),
            ),
          ),

          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            title: Text(
              country.name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text(
              country.capital,
              style: TextStyle(color: Colors.grey[700]),
            ),
            trailing: ElevatedButton(
              onPressed: onTap,
              child: const Text('Details'),
            ),
          ),
        ],
      ),
    );
  }
}
