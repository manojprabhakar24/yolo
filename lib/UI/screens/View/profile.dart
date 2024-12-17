import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';
import '../../../Model/modal.dart';
import 'messagecard.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isNotificationOn = userProfile.notificationsEnabled;
  bool isVisibilityOn = userProfile.visibilityEnabled;

  LineChartData getLineChartData() {
    return LineChartData(
      gridData: FlGridData(show: false),
      titlesData: FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (double value, TitleMeta meta) {
              int index = value.toInt();
              if (index < lifestylePatterns.length) {
                String formattedDate =
                DateFormat('MMM d').format(DateTime.parse(lifestylePatterns[index].date));
                return Text(formattedDate, style: TextStyle(fontSize: 12));
              }
              return Text('');
            },
          ),
        ),
      ),
      lineBarsData: [
        LineChartBarData(
          spots: lifestylePatterns.asMap().entries.map((entry) {
            return FlSpot(entry.key.toDouble(), entry.value.activityLevel.toDouble());
          }).toList(),
          isCurved: true,
          color: Colors.blue,
          belowBarData: BarAreaData(show: true, color: Colors.blue.withOpacity(0.3)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Name
            Text(userProfile.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),

            // User Details Row
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Age: ${userProfile.age} | ', style: TextStyle(fontSize: 16)),
                Text('${userProfile.gender} | ', style: TextStyle(fontSize: 16)),
                Text(userProfile.location, style: TextStyle(fontSize: 16)),
                Spacer(),
                ElevatedButton(
                  onPressed: () => print("Edit Profile Pressed"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  child: Text('Edit Profile', style: TextStyle(color: Colors.teal)),
                ),
              ],
            ),
            SizedBox(height: 24),

            // Notifications and Visibility Switches
            SwitchListTile(
              title: Text('Notifications'),
              value: isNotificationOn,
              onChanged: (value) => setState(() => isNotificationOn = value),
            ),
            SwitchListTile(
              title: Text('Spend Visibility'),
              value: isVisibilityOn,
              onChanged: (value) => setState(() => isVisibilityOn = value),
            ),
            SizedBox(height: 16),

            // Lifestyle Pattern Section
            Text('Lifestyle Pattern Mapping:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            SizedBox(height: 300, child: LineChart(getLineChartData())),

            SizedBox(height: 24),

            // App Preferences
            Text('App Preferences:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: appPreferences.map((pref) {
                return Column(
                  children: [
                    Icon(pref.icon, size: 30, color: Colors.blue),
                    SizedBox(height: 8),
                    Text(pref.title, style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                );
              }).toList(),
            ),

            SizedBox(height: 24),

            // MessageCardWidget
            MessageCardWidget(),
          ],
        ),
      ),
    );
  }
}
