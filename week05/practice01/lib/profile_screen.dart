import 'package:flutter/material.dart';
import 'star.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      // Image.asset('gotham.jpg'),
      Transform.translate(
        offset: const Offset(0, 100),
        child: Column(
          children: [
            _profileImage(context),
            _profileDetails(context),
            _profileActions(context),
          ],
        ),
      )
    ]));
  }

  Widget _profileImage(context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: ClipOval(
        child: Image.asset(
          'batman.jpg',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

Widget _profileDetails(context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Bruce Wayne',
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        _buildDetailsRow('Likes', '45'),
        _buildDetailsRow('Shares', '42'),
        _buildDetailsRow('Comments', '56'),
      ],
    ),
  );
}

Widget _buildDetailsRow(String heading, String value) {
  return Row(
    children: <Widget>[
      Text(
        '$heading: ',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lime),
      ),
      Text(
        '$value: ',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lime),
      ),
    ],
  );
}

Widget _profileActions(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      _buildIcon(Icons.call, 'Report'),
      _buildIcon(Icons.report, 'Sighted'),
      _buildIcon(Icons.account_balance_rounded, 'Witnessed'),
    ],
  );
}

Widget _buildIcon(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(
          icon,
          size: 40,
        ),
        Text(text)
      ],
    ),
  );
}
