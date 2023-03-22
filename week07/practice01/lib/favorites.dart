import 'package:flutter/material.dart';

class FavoritesWidget extends StatefulWidget {
  const FavoritesWidget({super.key});

  @override
  State<FavoritesWidget> createState() => _FavoritesWidgetState();
}

class _FavoritesWidgetState extends State<FavoritesWidget> {
  bool _isFavorited = false;
  int _favoriteCount = 1;
  String _favoriteState = "Save";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 40,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }

  // void _toggleFavorite() {
  //   setState(() {
  //     if (_isFavorited) {
  //       _favoriteCount -= 1;
  //       _isFavorited = false;
  //     } else {
  //       _favoriteCount += 1;
  //       _isFavorited = true;
  //     }
  //   });
  // }

  // void _toggleFavorite() {
  //   setState(() {
  //     if (_isFavorited) {
  //       _favoriteState = "Save";
  //       _isFavorited = false;
  //     } else {
  //       _favoriteState = "Saved";
  //       _isFavorited = true;
  //     }
  //   });
  // }

  void _toggleFavorite() {
    setState(() {
      _favoriteCount++;
    });
  }
}
