import 'package:flutter/material.dart';

class WeatherDetailsCard extends StatelessWidget {
  final int humidity; 
  final double windSpeed; 

  const WeatherDetailsCard({
    super.key,
    required this.humidity,
    required this.windSpeed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildInfoItem(Icons.water_drop, 'Влажность', '$humidity%'),
            Container(height: 30, width: 1, color: Colors.grey[300]), 
            _buildInfoItem(Icons.air, 'Ветер', '$windSpeed м/с'),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 28),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 14)),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}